#=
This file is auto-generated. Do not edit.
=#

#! format: off

"""
    mutable struct InterconnectingConverter <: StaticInjection
        name::String
        available::Bool
        bus::ACBus
        dc_bus::DCBus
        active_power::Float64
        rating::Float64
        active_power_limits::MinMax
        base_power::Float64
        efficiency::Float64
        services::Vector{Service}
        dynamic_injector::Union{Nothing, DynamicInjection}
        ext::Dict{String, Any}
        internal::InfrastructureSystemsInternal
    end

Interconnecting Power Converter (IPC) for transforming power from an ACBus to a DCBus

# Arguments
- `name::String`: Name of the component. Components of the same type (e.g., `PowerLoad`) must have unique names, but components of different types (e.g., `PowerLoad` and `ACBus`) can have the same name.
- `available::Bool`: Indicator of whether the component is connected and online (`true`) or disconnected, offline, or down (`false`). For example, a time-series of availability can be attached here to include planned or un-planned outages over a simulation horizon.
- `bus::ACBus`: Bus that this component is connected to
- `dc_bus::DCBus`
- `active_power::Float64`: Active Power on the DCSide, validation range: `active_power_limits`, action if invalid: `warn`
- `rating::Float64`: Thermal limited MVA Power Output of the converter. <= Capacity, validation range: `(0, nothing)`, action if invalid: `error`
- `active_power_limits::MinMax`
- `base_power::Float64`: Base power of the converter in MVA, validation range: `(0, nothing)`, action if invalid: `warn`
- `efficiency::Float64`: Conversion efficiency from AC Power to DC Power
- `services::Vector{Service}`: Services that this device contributes to
- `dynamic_injector::Union{Nothing, DynamicInjection}`: corresponding dynamic injection device
- `ext::Dict{String, Any}`
- `internal::InfrastructureSystemsInternal`: power system internal reference, do not modify
"""
mutable struct InterconnectingConverter <: StaticInjection
    "Name of the component. Components of the same type (e.g., `PowerLoad`) must have unique names, but components of different types (e.g., `PowerLoad` and `ACBus`) can have the same name."
    name::String
    "Indicator of whether the component is connected and online (`true`) or disconnected, offline, or down (`false`). For example, a time-series of availability can be attached here to include planned or un-planned outages over a simulation horizon."
    available::Bool
    "Bus that this component is connected to"
    bus::ACBus
    dc_bus::DCBus
    "Active Power on the DCSide"
    active_power::Float64
    "Thermal limited MVA Power Output of the converter. <= Capacity"
    rating::Float64
    active_power_limits::MinMax
    "Base power of the converter in MVA"
    base_power::Float64
    "Conversion efficiency from AC Power to DC Power"
    efficiency::Float64
    "Services that this device contributes to"
    services::Vector{Service}
    "corresponding dynamic injection device"
    dynamic_injector::Union{Nothing, DynamicInjection}
    "An empty *ext*ra dictionary for users to add metadata that are not used in simulation, such as latitude and longitude. See [Adding additional fields](@ref)."
    ext::Dict{String, Any}
    "power system internal reference, do not modify"
    internal::InfrastructureSystemsInternal
end

function InterconnectingConverter(name, available, bus, dc_bus, active_power, rating, active_power_limits, base_power, efficiency=1.0, services=Device[], dynamic_injector=nothing, ext=Dict{String, Any}(), )
    InterconnectingConverter(name, available, bus, dc_bus, active_power, rating, active_power_limits, base_power, efficiency, services, dynamic_injector, ext, InfrastructureSystemsInternal(), )
end

function InterconnectingConverter(; name, available, bus, dc_bus, active_power, rating, active_power_limits, base_power, efficiency=1.0, services=Device[], dynamic_injector=nothing, ext=Dict{String, Any}(), internal=InfrastructureSystemsInternal(), )
    InterconnectingConverter(name, available, bus, dc_bus, active_power, rating, active_power_limits, base_power, efficiency, services, dynamic_injector, ext, internal, )
end

# Constructor for demo purposes; non-functional.
function InterconnectingConverter(::Nothing)
    InterconnectingConverter(;
        name="init",
        available=false,
        bus=ACBus(nothing),
        dc_bus=DCBus(nothing),
        active_power=0.0,
        rating=0.0,
        active_power_limits=(min=0.0, max=0.0),
        base_power=0.0,
        efficiency=0.0,
        services=Device[],
        dynamic_injector=nothing,
        ext=Dict{String, Any}(),
    )
end

"""Get [`InterconnectingConverter`](@ref) `name`."""
get_name(value::InterconnectingConverter) = value.name
"""Get [`InterconnectingConverter`](@ref) `available`."""
get_available(value::InterconnectingConverter) = value.available
"""Get [`InterconnectingConverter`](@ref) `bus`."""
get_bus(value::InterconnectingConverter) = value.bus
"""Get [`InterconnectingConverter`](@ref) `dc_bus`."""
get_dc_bus(value::InterconnectingConverter) = value.dc_bus
"""Get [`InterconnectingConverter`](@ref) `active_power`."""
get_active_power(value::InterconnectingConverter) = get_value(value, value.active_power)
"""Get [`InterconnectingConverter`](@ref) `rating`."""
get_rating(value::InterconnectingConverter) = get_value(value, value.rating)
"""Get [`InterconnectingConverter`](@ref) `active_power_limits`."""
get_active_power_limits(value::InterconnectingConverter) = get_value(value, value.active_power_limits)
"""Get [`InterconnectingConverter`](@ref) `base_power`."""
get_base_power(value::InterconnectingConverter) = value.base_power
"""Get [`InterconnectingConverter`](@ref) `efficiency`."""
get_efficiency(value::InterconnectingConverter) = value.efficiency
"""Get [`InterconnectingConverter`](@ref) `services`."""
get_services(value::InterconnectingConverter) = value.services
"""Get [`InterconnectingConverter`](@ref) `dynamic_injector`."""
get_dynamic_injector(value::InterconnectingConverter) = value.dynamic_injector
"""Get [`InterconnectingConverter`](@ref) `ext`."""
get_ext(value::InterconnectingConverter) = value.ext
"""Get [`InterconnectingConverter`](@ref) `internal`."""
get_internal(value::InterconnectingConverter) = value.internal

"""Set [`InterconnectingConverter`](@ref) `available`."""
set_available!(value::InterconnectingConverter, val) = value.available = val
"""Set [`InterconnectingConverter`](@ref) `bus`."""
set_bus!(value::InterconnectingConverter, val) = value.bus = val
"""Set [`InterconnectingConverter`](@ref) `dc_bus`."""
set_dc_bus!(value::InterconnectingConverter, val) = value.dc_bus = val
"""Set [`InterconnectingConverter`](@ref) `active_power`."""
set_active_power!(value::InterconnectingConverter, val) = value.active_power = set_value(value, val)
"""Set [`InterconnectingConverter`](@ref) `rating`."""
set_rating!(value::InterconnectingConverter, val) = value.rating = set_value(value, val)
"""Set [`InterconnectingConverter`](@ref) `active_power_limits`."""
set_active_power_limits!(value::InterconnectingConverter, val) = value.active_power_limits = set_value(value, val)
"""Set [`InterconnectingConverter`](@ref) `base_power`."""
set_base_power!(value::InterconnectingConverter, val) = value.base_power = val
"""Set [`InterconnectingConverter`](@ref) `efficiency`."""
set_efficiency!(value::InterconnectingConverter, val) = value.efficiency = val
"""Set [`InterconnectingConverter`](@ref) `services`."""
set_services!(value::InterconnectingConverter, val) = value.services = val
"""Set [`InterconnectingConverter`](@ref) `ext`."""
set_ext!(value::InterconnectingConverter, val) = value.ext = val
