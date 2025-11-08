# Internet Hardware Analysis

## Overview

This document analyzes UniFi gateway devices for our home network setup based on official specifications and features. Focus is on rack-mountable solutions with built-in controllers for professional home lab deployment.

## Gateway Device Analysis

### Primary Candidates

#### 🏆 **UniFi Dream Machine SE (UDM-SE)** - _RECOMMENDED_

**Why it's ideal for our setup:**

- **Rack mountable** ✅ (fits our networking rack)
- **10GB connectivity** (1 SFP+ uplink + 1 SFP+ LAN)
- **2.5GB WAN port** for future ISP upgrades
- **8x 1GB LAN ports** for wired devices
- **Built-in controller** (onboard + remote capable)
- **NVR capabilities** with 128GB SSD + 3.5" HDD bay for Protect cameras
- **Enterprise features** in prosumer package

**Connectivity:**

- Uplink: 1x SFP+ 10GB, 1x 2.5GB RJ45
- Downlink: 8x 1GB RJ45, 1x SFP+ 10GB
- Built-in WiFi: ❌ (requires separate APs)

#### **UniFi Dream Machine Pro (UDM-Pro)** - _Alternative_

- **Rack mountable** ✅
- **Built-in controller** (onboard + remote)
- **No built-in WiFi** (requires separate APs)
- **Basic port config** (specific ports not detailed in data)
- **Lower cost** than UDM-SE
- **Mature platform** with established reliability

### Not Recommended for Our Use Case

#### **UniFi Dream Machine (UDM-US)**

- ❌ **NOT rack mountable** (desktop form factor)
- ✅ Built-in WiFi (but we want separate APs anyway)
- ✅ Built-in controller
- **Best for:** Small apartments/homes without rack infrastructure

#### **UniFi Security Gateway (USG)**

- ✅ Rack mountable
- ❌ **Requires separate controller** (Cloud Key or self-hosted)
- ❌ **Legacy platform** (limited future support)
- **Being phased out** in favor of Dream Machine line

#### **UniFi Security Gateway Pro 4 (USG-PRO-4)**

- ✅ Rack mountable
- ✅ 10GB SFP+ ports (1 uplink, 1 downlink)
- ✅ 2x 1GB RJ45 ports
- ❌ **Requires separate controller**
- ❌ **Legacy platform**

#### **UniFi Dream Wall (UDW)**

- ❌ **NOT rack mountable**
- ✅ Built-in WiFi (2.4GHz 2x2, 5GHz 4x4)
- ✅ Extensive PoE (17 ports total with PoE+/PoE++)
- **Best for:** All-in-one wall-mount installations

## Recommended Network Architecture

### Core Setup (Phase 1)

```
Internet → UDM-SE → [Rack-mounted setup]
                 ├── PoE Switch (for APs)
                 ├── Standard Switch (for devices)
                 └── NVR Storage (built-in)
```

### Component Recommendations

#### **Primary Gateway: UDM-SE**

- Handles routing, firewall, VLANs, and controller duties
- Future-proof with 10GB uplinks
- Integrated NVR for security cameras
- Professional rack form factor

#### **Access Points (Phase 1)**

- **U6 Pro** (primary coverage areas)
  - WiFi 6, higher performance
  - Better for dense device environments
- **U6 Lite** (secondary areas)
  - Cost-effective WiFi 6
  - Adequate for most residential needs

#### **Switching Strategy**

- **PoE Switch** (US-16-150W or US-24-250W)
  - Power access points and cameras
  - Rack mounted to match UDM-SE
- **Standard Switch** (US-16 or US-24)
  - Non-PoE devices (servers, workstations, gaming)
  - Lower cost per port

## Implementation Plan

### Phase 1: Core Infrastructure

1. **UDM-SE** as primary gateway
2. **1x U6 Pro** for main coverage area
3. **PoE switch** to power AP and future devices
4. **Standalone modem** or bridge existing Xfinity gateway

### Phase 2: Expansion

1. Add **U6 Lite** for extended coverage
2. **Security cameras** using built-in NVR
3. **Additional switches** as needed
4. **VLAN segmentation** for IoT devices

### Phase 3: Advanced Features

1. **10GB uplink** to ISP (when available)
2. **Inter-VLAN routing** for secure IoT access
3. **Site-to-site VPN** for remote access
4. **Load balancing** with dual WAN

## Why UDM-SE Over Alternatives

| Feature             | UDM-SE       | UDM-Pro | USG-PRO-4    |
| ------------------- | ------------ | ------- | ------------ |
| Rack Mount          | ✅           | ✅      | ✅           |
| Built-in Controller | ✅           | ✅      | ❌           |
| 10GB Ports          | ✅ (2x SFP+) | ❓      | ✅ (2x SFP+) |
| 2.5GB WAN           | ✅           | ❌      | ❌           |
| Built-in NVR        | ✅           | ❌      | ❌           |
| Future Support      | ✅           | ✅      | ❌ (EOL)     |

**Bottom Line:** UDM-SE provides the most comprehensive feature set for a professional home lab with room to grow.
 