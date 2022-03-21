#=
This file is auto-generated. Do not edit.
=#

#! format: off

"""
    mutable struct ESAC1A <: AVR
        Tr::Float64
        Tb::Float64
        Tc::Float64
        Ka::Float64
        Ta::Float64
        Va_lim::NamedTuple{(:min, :max), Tuple{Float64, Float64}}
        Te::Float64
        Kf::Float64
        Tf::Float64
        Kc::Float64
        Kd::Float64
        Ke::Float64
        E_sat::Tuple{Float64, Float64}
        Se::Tuple{Float64, Float64}
        Vr_lim::NamedTuple{(:min, :max), Tuple{Float64, Float64}}
        V_ref::Float64
        saturation_coeffs::Tuple{Float64, Float64}
        ext::Dict{String, Any}
        states::Vector{Symbol}
        n_states::Int
        states_types::Vector{StateTypes}
        internal::InfrastructureSystemsInternal
    end

This excitation systems consists of an alternator main exciter feeding its output via non-controlled rectifiers.
The exciter does not employ self-excitation, and the voltage regulator power is taken from a source that is not affected by external transients.
Parameters of IEEE Std 421.5 Type AC1A Excitacion System. This model corresponds to ESAC1A in PSSE and PSLF

# Arguments
- `Tr::Float64`: Regulator input filter time constant in s, validation range: `(0, 0.5)`, action if invalid: `warn`
- `Tb::Float64`: Regulator denominator (lag) time constant in s, validation range: `(0, 20)`, action if invalid: `warn`
- `Tc::Float64`: Regulator numerator (lead) time constant in s, validation range: `(0, 20)`, action if invalid: `warn`
- `Ka::Float64`: Regulator output gain, validation range: `(0, 1000)`, action if invalid: `warn`
- `Ta::Float64`: Regulator output time constant in s, validation range: `(0, 10)`
- `Va_lim::NamedTuple{(:min, :max), Tuple{Float64, Float64}}`: Limits for regulator output `(Va_min, Va_max)`
- `Te::Float64`: Exciter field time constant in s, validation range: `(eps(), 2)`, action if invalid: `error`
- `Kf::Float64`: Rate feedback excitation system stabilizer gain, validation range: `(0, 0.3)`, action if invalid: `warn`
- `Tf::Float64`: Rate feedback time constant, validation range: `(eps(), 1.5)`, action if invalid: `error`
- `Kc::Float64`: Rectifier loading factor proportional to commutating reactance, validation range: `(0, 1)`, action if invalid: `warn`
- `Kd::Float64`: Demagnetizing factor, function of exciter alternator reactances, validation range: `(0, 1)`, action if invalid: `warn`
- `Ke::Float64`: Exciter field proportional constant, validation range: `(0, 1)`, action if invalid: `warn`
- `E_sat::Tuple{Float64, Float64}`: Exciter output voltage for saturation factor: (E1, E2)
- `Se::Tuple{Float64, Float64}`: Exciter saturation factor at exciter output voltage: (Se(E1), Se(E2))
- `Vr_lim::NamedTuple{(:min, :max), Tuple{Float64, Float64}}`: Limits for exciter field voltage: `(Vr_min, Vr_max)`
- `V_ref::Float64`: Reference Voltage Set-point, validation range: `(0, nothing)`
- `saturation_coeffs::Tuple{Float64, Float64}`: Coefficients (A,B) of the function: Se(x) = B(x - A)^2/x
- `ext::Dict{String, Any}`
- `states::Vector{Symbol}`: The states are:
	Vm: Sensed terminal voltage,
	Vr1: Lead-lag state,
	Vr2: Regulator output state,
	Ve: Integrator output state,
	Vr3: Feedback output state
- `n_states::Int`: ESAC1A has 5 states
- `states_types::Vector{StateTypes}`: ESAC1A has 5 states
- `internal::InfrastructureSystemsInternal`: power system internal reference, do not modify
"""
mutable struct ESAC1A <: AVR
    "Regulator input filter time constant in s"
    Tr::Float64
    "Regulator denominator (lag) time constant in s"
    Tb::Float64
    "Regulator numerator (lead) time constant in s"
    Tc::Float64
    "Regulator output gain"
    Ka::Float64
    "Regulator output time constant in s"
    Ta::Float64
    "Limits for regulator output `(Va_min, Va_max)`"
    Va_lim::NamedTuple{(:min, :max), Tuple{Float64, Float64}}
    "Exciter field time constant in s"
    Te::Float64
    "Rate feedback excitation system stabilizer gain"
    Kf::Float64
    "Rate feedback time constant"
    Tf::Float64
    "Rectifier loading factor proportional to commutating reactance"
    Kc::Float64
    "Demagnetizing factor, function of exciter alternator reactances"
    Kd::Float64
    "Exciter field proportional constant"
    Ke::Float64
    "Exciter output voltage for saturation factor: (E1, E2)"
    E_sat::Tuple{Float64, Float64}
    "Exciter saturation factor at exciter output voltage: (Se(E1), Se(E2))"
    Se::Tuple{Float64, Float64}
    "Limits for exciter field voltage: `(Vr_min, Vr_max)`"
    Vr_lim::NamedTuple{(:min, :max), Tuple{Float64, Float64}}
    "Reference Voltage Set-point"
    V_ref::Float64
    "Coefficients (A,B) of the function: Se(x) = B(x - A)^2/x"
    saturation_coeffs::Tuple{Float64, Float64}
    ext::Dict{String, Any}
    "The states are:
	Vm: Sensed terminal voltage,
	Vr1: Lead-lag state,
	Vr2: Regulator output state,
	Ve: Integrator output state,
	Vr3: Feedback output state"
    states::Vector{Symbol}
    "ESAC1A has 5 states"
    n_states::Int
    "ESAC1A has 5 states"
    states_types::Vector{StateTypes}
    "power system internal reference, do not modify"
    internal::InfrastructureSystemsInternal
end

function ESAC1A(Tr, Tb, Tc, Ka, Ta, Va_lim, Te, Kf, Tf, Kc, Kd, Ke, E_sat, Se, Vr_lim, V_ref=1.0, saturation_coeffs=PowerSystems.get_avr_saturation(E_sat, Se), ext=Dict{String, Any}(), )
    ESAC1A(Tr, Tb, Tc, Ka, Ta, Va_lim, Te, Kf, Tf, Kc, Kd, Ke, E_sat, Se, Vr_lim, V_ref, saturation_coeffs, ext, [:Vm, :Vr1, :Vr2, :Ve, :Vr3], 5, [StateTypes.Hybrid, StateTypes.Hybrid, StateTypes.Hybrid, StateTypes.Differential, StateTypes.Differential], InfrastructureSystemsInternal(), )
end

function ESAC1A(; Tr, Tb, Tc, Ka, Ta, Va_lim, Te, Kf, Tf, Kc, Kd, Ke, E_sat, Se, Vr_lim, V_ref=1.0, saturation_coeffs=PowerSystems.get_avr_saturation(E_sat, Se), ext=Dict{String, Any}(), states=[:Vm, :Vr1, :Vr2, :Ve, :Vr3], n_states=5, states_types=[StateTypes.Hybrid, StateTypes.Hybrid, StateTypes.Hybrid, StateTypes.Differential, StateTypes.Differential], internal=InfrastructureSystemsInternal(), )
    ESAC1A(Tr, Tb, Tc, Ka, Ta, Va_lim, Te, Kf, Tf, Kc, Kd, Ke, E_sat, Se, Vr_lim, V_ref, saturation_coeffs, ext, states, n_states, states_types, internal, )
end

# Constructor for demo purposes; non-functional.
function ESAC1A(::Nothing)
    ESAC1A(;
        Tr=0,
        Tb=0,
        Tc=0,
        Ka=0,
        Ta=0,
        Va_lim=(min=0.0, max=0.0),
        Te=0,
        Kf=0,
        Tf=0,
        Kc=0,
        Kd=0,
        Ke=0,
        E_sat=(0.0, 0.0),
        Se=(0.0, 0.0),
        Vr_lim=(min=0.0, max=0.0),
        V_ref=0,
        saturation_coeffs=(0.0, 0.0),
        ext=Dict{String, Any}(),
    )
end

"""Get [`ESAC1A`](@ref) `Tr`."""
get_Tr(value::ESAC1A) = value.Tr
"""Get [`ESAC1A`](@ref) `Tb`."""
get_Tb(value::ESAC1A) = value.Tb
"""Get [`ESAC1A`](@ref) `Tc`."""
get_Tc(value::ESAC1A) = value.Tc
"""Get [`ESAC1A`](@ref) `Ka`."""
get_Ka(value::ESAC1A) = value.Ka
"""Get [`ESAC1A`](@ref) `Ta`."""
get_Ta(value::ESAC1A) = value.Ta
"""Get [`ESAC1A`](@ref) `Va_lim`."""
get_Va_lim(value::ESAC1A) = value.Va_lim
"""Get [`ESAC1A`](@ref) `Te`."""
get_Te(value::ESAC1A) = value.Te
"""Get [`ESAC1A`](@ref) `Kf`."""
get_Kf(value::ESAC1A) = value.Kf
"""Get [`ESAC1A`](@ref) `Tf`."""
get_Tf(value::ESAC1A) = value.Tf
"""Get [`ESAC1A`](@ref) `Kc`."""
get_Kc(value::ESAC1A) = value.Kc
"""Get [`ESAC1A`](@ref) `Kd`."""
get_Kd(value::ESAC1A) = value.Kd
"""Get [`ESAC1A`](@ref) `Ke`."""
get_Ke(value::ESAC1A) = value.Ke
"""Get [`ESAC1A`](@ref) `E_sat`."""
get_E_sat(value::ESAC1A) = value.E_sat
"""Get [`ESAC1A`](@ref) `Se`."""
get_Se(value::ESAC1A) = value.Se
"""Get [`ESAC1A`](@ref) `Vr_lim`."""
get_Vr_lim(value::ESAC1A) = value.Vr_lim
"""Get [`ESAC1A`](@ref) `V_ref`."""
get_V_ref(value::ESAC1A) = value.V_ref
"""Get [`ESAC1A`](@ref) `saturation_coeffs`."""
get_saturation_coeffs(value::ESAC1A) = value.saturation_coeffs
"""Get [`ESAC1A`](@ref) `ext`."""
get_ext(value::ESAC1A) = value.ext
"""Get [`ESAC1A`](@ref) `states`."""
get_states(value::ESAC1A) = value.states
"""Get [`ESAC1A`](@ref) `n_states`."""
get_n_states(value::ESAC1A) = value.n_states
"""Get [`ESAC1A`](@ref) `states_types`."""
get_states_types(value::ESAC1A) = value.states_types
"""Get [`ESAC1A`](@ref) `internal`."""
get_internal(value::ESAC1A) = value.internal

"""Set [`ESAC1A`](@ref) `Tr`."""
set_Tr!(value::ESAC1A, val) = value.Tr = val
"""Set [`ESAC1A`](@ref) `Tb`."""
set_Tb!(value::ESAC1A, val) = value.Tb = val
"""Set [`ESAC1A`](@ref) `Tc`."""
set_Tc!(value::ESAC1A, val) = value.Tc = val
"""Set [`ESAC1A`](@ref) `Ka`."""
set_Ka!(value::ESAC1A, val) = value.Ka = val
"""Set [`ESAC1A`](@ref) `Ta`."""
set_Ta!(value::ESAC1A, val) = value.Ta = val
"""Set [`ESAC1A`](@ref) `Va_lim`."""
set_Va_lim!(value::ESAC1A, val) = value.Va_lim = val
"""Set [`ESAC1A`](@ref) `Te`."""
set_Te!(value::ESAC1A, val) = value.Te = val
"""Set [`ESAC1A`](@ref) `Kf`."""
set_Kf!(value::ESAC1A, val) = value.Kf = val
"""Set [`ESAC1A`](@ref) `Tf`."""
set_Tf!(value::ESAC1A, val) = value.Tf = val
"""Set [`ESAC1A`](@ref) `Kc`."""
set_Kc!(value::ESAC1A, val) = value.Kc = val
"""Set [`ESAC1A`](@ref) `Kd`."""
set_Kd!(value::ESAC1A, val) = value.Kd = val
"""Set [`ESAC1A`](@ref) `Ke`."""
set_Ke!(value::ESAC1A, val) = value.Ke = val
"""Set [`ESAC1A`](@ref) `E_sat`."""
set_E_sat!(value::ESAC1A, val) = value.E_sat = val
"""Set [`ESAC1A`](@ref) `Se`."""
set_Se!(value::ESAC1A, val) = value.Se = val
"""Set [`ESAC1A`](@ref) `Vr_lim`."""
set_Vr_lim!(value::ESAC1A, val) = value.Vr_lim = val
"""Set [`ESAC1A`](@ref) `V_ref`."""
set_V_ref!(value::ESAC1A, val) = value.V_ref = val
"""Set [`ESAC1A`](@ref) `saturation_coeffs`."""
set_saturation_coeffs!(value::ESAC1A, val) = value.saturation_coeffs = val
"""Set [`ESAC1A`](@ref) `ext`."""
set_ext!(value::ESAC1A, val) = value.ext = val
"""Set [`ESAC1A`](@ref) `states_types`."""
set_states_types!(value::ESAC1A, val) = value.states_types = val

