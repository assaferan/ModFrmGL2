from sage.modular.arithgroup.congroup_gammaH import GammaH
from sage.modular.modform.constructor import ModularForms
from sage.rings.integer_ring import ZZ

def get_shim():
    shim = []
    max_level = 2234
    max_d = 18
    genera = [(d-1)*(d-2) // 2 for d in [2..max_d]]
    for N in range(1,max_level+1):
        ZmodN = ZZ.quo(N*ZZ)
        U = ZmodN.unit_group()
        hs = [[ZmodN(g) for g in H.gens()] for H in U.subgroups()]
        for H in hs:
            G = GammaH(N,H)
            if G.genus() in genera:
                shim.append((N, G.genus(), G))
        print(N)
    return shim

def involution_test(G, g, N, Q):
    mfG = ModularForms(G)
    cfG = mfG.cuspidal_subspace()
    csG = cfG.modular_symbols()
    wQ = csG.atkin_lehner_operator(Q)
    g_quo = (wQ-1).kernel().dimension() // 2
    if (g == g_quo):
        # wQ is the identity and not an involution
        return True
    # Riemann-Hurwitz
    f = (2*g-2) - 2*(2*g_quo-2)
    return 2*g in [(f-1)*(f-2), (f-2)*(f-3)]

def al_test(G,g,N):
    Qs = [Q for Q in ZZ(N).divisors() if GCD(Q, N // Q) == 1]
    for Q in Qs:
        al_Q = G.atkin_lehner_matrix(Q)
        is_norm = all([al_Q * g * al_Q^(-1) in G for g in G.gens()])
        if (is_norm) and (not involution_test(G, g, N, Q)):
            return False
    return True

def first_pass_filter_shim(shim):
    filtered = []
    for s in shim:
        print(s)
        N,g,G = s
        if al_test(G,g,N):
            filtered.append(s)
    return filtered
            
    
