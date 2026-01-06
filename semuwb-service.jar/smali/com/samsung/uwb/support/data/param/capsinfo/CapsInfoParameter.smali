.class public Lcom/samsung/uwb/support/data/param/capsinfo/CapsInfoParameter;
.super Ljava/lang/Object;
.source "CapsInfoParameter.java"


# static fields
.field public static final AOA_RESULT_REQ_ANTENNA_INTERLEAVING:B = -0x1dt

.field public static final AOA_SUPPORT:B = 0x13t

.field public static final BLOCK_STRIDING:B = 0xct

.field public static final BPRF_PARAMETER_SETS:B = 0x11t

.field private static final BYPASS_LOGICAL_LINK_MODE_SUPPORT_3_0:B = 0x1ct

.field public static final CC_CONSTRAINT_LENGTH:B = 0x10t

.field public static final CHANNELS:B = 0xet

.field public static final CHANNEL_BITMASK:B = -0x5dt

.field public static final DEVICE_ROLES:B = 0x5t

.field public static final DEVICE_TYPE:B = 0x4t

.field public static final DIAGNOSTICS:B = -0x19t

.field public static final DT_ANCHOR_MAX_ACTIVE_RR_2_0:B = 0x17t

.field private static final DT_TAG_BLOCK_SKIPPING_3_0:B = 0x19t

.field public static final DT_TAG_MAX_ACTIVE_RR_2_0:B = 0x18t

.field public static final EXTENDED_MAC_ADDRESS:B = 0x14t

.field public static final FIRA_MAC_VERSION_RANGE:B = 0x3t

.field public static final FIRA_PHY_VERSION_RANGE:B = 0x2t

.field public static final HOPPING_CONFIG_MODES_AND_SEQUENCES:B = -0x5et

.field public static final HOPPING_MODE:B = 0xbt

.field public static final HPRF_PARAMETER_SETS:B = 0x12t

.field private static final LL_CAPABILITY_PARAM_3_0:B = 0x1bt

.field public static final MAX_DATA_PACKET_PAYLOAD_SIZE:B = 0x1t

.field public static final MAX_MESSAGE_SIZE:B = 0x0t

.field public static final MAX_RANGING_SESSION_NUMBER:B = -0x17t

.field public static final MIN_RANGING_INTERVAL_MS:B = -0x1ct

.field public static final MIN_SLOT_DURATION_RSTU:B = -0x18t

.field public static final MULTI_NODE_MODE:B = 0x8t

.field public static final POWER_STATS:B = -0x40t

.field private static final PSDU_LENGTH_SUPPORT_3_0:B = 0x1at

.field public static final RANGE_DATA_NTF_CONFIG:B = -0x1bt

.field public static final RANGING_METHOD:B = 0x6t

.field public static final RANGING_TIME_STRUCT:B = 0x9t

.field public static final RFRAME_CONFIG:B = 0xft

.field public static final RSSI_REPORTING:B = -0x1at

.field public static final SCHEDULE_MODE:B = 0xat

.field public static final SESSION_KEY_LENGTH:B = 0x16t

.field public static final SLOT_BITMASK:B = -0x60t

.field public static final STS_CONFIG:B = 0x7t

.field public static final SUPPORTED_CHANNELS_AOA:B = -0x16t

.field public static final SUPPORTED_MAX_RANGING_SESSION_NUMBER:B = -0x58t

.field public static final SUPPORTED_MIN_UWB_INITIATION_TIME_MS:B = -0x57t

.field public static final SUPPORTED_PROTOCOL_VERSION:B = -0x5ct

.field public static final SUPPORTED_PULSESHAPE_COMBO:B = -0x5at

.field public static final SUPPORTED_RAN_MULTIPLIER:B = -0x59t

.field public static final SUPPORTED_UWBS_MAX_PPM:B = -0x55t

.field public static final SUPPORTED_UWB_CONFIG_ID:B = -0x5bt

.field public static final SUSPEND_RANGING_SUPPORT:B = 0x15t

.field public static final SYNC_CODE_INDEX_BITMASK:B = -0x5ft

.field public static final UWB_INITIATION_TIME:B = 0xdt


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static find(BI[B)Lcom/samsung/uwb/support/data/param/TlvParam;
    .locals 2
    .param p0, "tag"    # B
    .param p1, "length"    # I
    .param p2, "value"    # [B

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    sparse-switch p0, :sswitch_data_0

    .line 302
    new-instance v1, Lcom/samsung/uwb/support/data/param/TlvParam;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .local v1, "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 216
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_0
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/BypassLogicalLinkModeSupport;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/BypassLogicalLinkModeSupport;-><init>(BI[B)V

    .line 217
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 212
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_1
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/LlCapabilityParam;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/LlCapabilityParam;-><init>(BI[B)V

    .line 213
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 208
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_2
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/PsduLengthSupport;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/PsduLengthSupport;-><init>(BI[B)V

    .line 209
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 204
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_3
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/DtTagBlockSkipping;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/DtTagBlockSkipping;-><init>(BI[B)V

    .line 205
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 200
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_4
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/DtTagMaxActiveRr;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/DtTagMaxActiveRr;-><init>(BI[B)V

    .line 201
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 196
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_5
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/DtAnchorMaxActiveRr;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/DtAnchorMaxActiveRr;-><init>(BI[B)V

    .line 197
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 192
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_6
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/SessionKeyLength;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/SessionKeyLength;-><init>(BI[B)V

    .line 193
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 188
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_7
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/SuspendRangingSupport;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/SuspendRangingSupport;-><init>(BI[B)V

    .line 189
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 184
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_8
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/ExtendedMacAddress;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/ExtendedMacAddress;-><init>(BI[B)V

    .line 185
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 180
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_9
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/AoaSupport;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/AoaSupport;-><init>(BI[B)V

    .line 181
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 176
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_a
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/HprfParameterSets;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/HprfParameterSets;-><init>(BI[B)V

    .line 177
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 172
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_b
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/BprfParameterSets;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/BprfParameterSets;-><init>(BI[B)V

    .line 173
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 168
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_c
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/CcConstraintLength;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/CcConstraintLength;-><init>(BI[B)V

    .line 169
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 164
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_d
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/RframeConfig;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/RframeConfig;-><init>(BI[B)V

    .line 165
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 160
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_e
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/Channels;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/Channels;-><init>(BI[B)V

    .line 161
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 156
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_f
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/UwbInitiationTime;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/UwbInitiationTime;-><init>(BI[B)V

    .line 157
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 152
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_10
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/BlockStriding;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/BlockStriding;-><init>(BI[B)V

    .line 153
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 148
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_11
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/HoppingMode;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/HoppingMode;-><init>(BI[B)V

    .line 149
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 144
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_12
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/ScheduleMode;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/ScheduleMode;-><init>(BI[B)V

    .line 145
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 140
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_13
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/RangingTimeStruct;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/RangingTimeStruct;-><init>(BI[B)V

    .line 141
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 136
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_14
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/MultiNodeMode;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/MultiNodeMode;-><init>(BI[B)V

    .line 137
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 132
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_15
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/StsConfig;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/StsConfig;-><init>(BI[B)V

    .line 133
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 128
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_16
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/RangingMethod;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/RangingMethod;-><init>(BI[B)V

    .line 129
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 124
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_17
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/DeviceRole;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/DeviceRole;-><init>(BI[B)V

    .line 125
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 120
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_18
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/DeviceType;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/DeviceType;-><init>(BI[B)V

    .line 121
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 116
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_19
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/FiraMacVersionRange;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/FiraMacVersionRange;-><init>(BI[B)V

    .line 117
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 112
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_1a
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/FiraPhyVersionRange;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/FiraPhyVersionRange;-><init>(BI[B)V

    .line 113
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 108
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_1b
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/MaxDataPacketPayloadSize;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/MaxDataPacketPayloadSize;-><init>(BI[B)V

    .line 109
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 104
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_1c
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/MaxMessageSize;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/MaxMessageSize;-><init>(BI[B)V

    .line 105
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 298
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_1d
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/SupportedChannelsAoa;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/SupportedChannelsAoa;-><init>(BI[B)V

    .line 299
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 294
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_1e
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/MaxRangingSessionNum;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/MaxRangingSessionNum;-><init>(BI[B)V

    .line 295
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 290
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_1f
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/MinSlotDurationRstu;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/MinSlotDurationRstu;-><init>(BI[B)V

    .line 291
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 286
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_20
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/Diagnostics;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/Diagnostics;-><init>(BI[B)V

    .line 287
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 282
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_21
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/RssiReporting;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/RssiReporting;-><init>(BI[B)V

    .line 283
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 278
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_22
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/RangeDataNtfConfig;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/RangeDataNtfConfig;-><init>(BI[B)V

    .line 279
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 274
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_23
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/MinRangingInterval;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/MinRangingInterval;-><init>(BI[B)V

    .line 275
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 270
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_24
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/AoaRstReqInterleaving;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/AoaRstReqInterleaving;-><init>(BI[B)V

    .line 271
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 266
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_25
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/PowerStats;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/PowerStats;-><init>(BI[B)V

    .line 267
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 261
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_26
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/UwbsMaxPpm;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/UwbsMaxPpm;-><init>(BI[B)V

    .line 262
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 257
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_27
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/MinUwbInitiationTime;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/MinUwbInitiationTime;-><init>(BI[B)V

    .line 258
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 253
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_28
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/SupportedMaxSessionNum;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/SupportedMaxSessionNum;-><init>(BI[B)V

    .line 254
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 249
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_29
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/RanMultiplier;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/RanMultiplier;-><init>(BI[B)V

    .line 250
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 245
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_2a
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/PulseShapeCombo;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/PulseShapeCombo;-><init>(BI[B)V

    .line 246
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 241
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_2b
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/UwbConfigId;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/UwbConfigId;-><init>(BI[B)V

    .line 242
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 237
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_2c
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/SupportedProtocolVersion;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/SupportedProtocolVersion;-><init>(BI[B)V

    .line 238
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 233
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_2d
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/ChannelBitMask;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/ChannelBitMask;-><init>(BI[B)V

    .line 234
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 229
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_2e
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/HoppingConfigModesAndSequences;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/HoppingConfigModesAndSequences;-><init>(BI[B)V

    .line 230
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 225
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_2f
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/SyncCodeIndexBitMask;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/SyncCodeIndexBitMask;-><init>(BI[B)V

    .line 226
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 221
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_30
    new-instance v1, Lcom/samsung/uwb/support/data/param/capsinfo/SlotBitMask;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/capsinfo/SlotBitMask;-><init>(BI[B)V

    .line 222
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    nop

    .line 306
    :goto_0
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x60 -> :sswitch_30
        -0x5f -> :sswitch_2f
        -0x5e -> :sswitch_2e
        -0x5d -> :sswitch_2d
        -0x5c -> :sswitch_2c
        -0x5b -> :sswitch_2b
        -0x5a -> :sswitch_2a
        -0x59 -> :sswitch_29
        -0x58 -> :sswitch_28
        -0x57 -> :sswitch_27
        -0x55 -> :sswitch_26
        -0x40 -> :sswitch_25
        -0x1d -> :sswitch_24
        -0x1c -> :sswitch_23
        -0x1b -> :sswitch_22
        -0x1a -> :sswitch_21
        -0x19 -> :sswitch_20
        -0x18 -> :sswitch_1f
        -0x17 -> :sswitch_1e
        -0x16 -> :sswitch_1d
        0x0 -> :sswitch_1c
        0x1 -> :sswitch_1b
        0x2 -> :sswitch_1a
        0x3 -> :sswitch_19
        0x4 -> :sswitch_18
        0x5 -> :sswitch_17
        0x6 -> :sswitch_16
        0x7 -> :sswitch_15
        0x8 -> :sswitch_14
        0x9 -> :sswitch_13
        0xa -> :sswitch_12
        0xb -> :sswitch_11
        0xc -> :sswitch_10
        0xd -> :sswitch_f
        0xe -> :sswitch_e
        0xf -> :sswitch_d
        0x10 -> :sswitch_c
        0x11 -> :sswitch_b
        0x12 -> :sswitch_a
        0x13 -> :sswitch_9
        0x14 -> :sswitch_8
        0x15 -> :sswitch_7
        0x16 -> :sswitch_6
        0x17 -> :sswitch_5
        0x18 -> :sswitch_4
        0x19 -> :sswitch_3
        0x1a -> :sswitch_2
        0x1b -> :sswitch_1
        0x1c -> :sswitch_0
    .end sparse-switch
.end method

.method public static getTagName(I)Ljava/lang/String;
    .locals 8
    .param p0, "tag"    # I

    .line 311
    const-string v0, "INVALID"

    :try_start_0
    const-class v1, Lcom/samsung/uwb/support/data/param/capsinfo/CapsInfoParameter;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 312
    .local v4, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 313
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 314
    .local v5, "name":Ljava/lang/String;
    new-instance v6, Lcom/samsung/uwb/support/data/param/capsinfo/CapsInfoParameter;

    invoke-direct {v6}, Lcom/samsung/uwb/support/data/param/capsinfo/CapsInfoParameter;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 315
    .local v6, "value":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v7, p0, :cond_0

    .line 316
    return-object v5

    .line 311
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 322
    :cond_1
    nop

    .line 323
    return-object v0

    .line 319
    :catch_0
    move-exception v1

    .line 320
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 321
    return-object v0
.end method

.method public static final parse([B)Ljava/util/HashMap;
    .locals 8
    .param p0, "tlvArray"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Byte;",
            "Lcom/samsung/uwb/support/data/param/TlvParam;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    .local v0, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Byte;Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    if-eqz p0, :cond_5

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_3

    .line 70
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 71
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 73
    const/4 v2, 0x0

    .line 74
    .local v2, "offset":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_4

    .line 75
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    aget-byte v2, p0, v2

    .line 76
    .local v2, "tag":B
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .local v4, "offset":I
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 77
    .local v3, "length":I
    if-eqz v3, :cond_3

    .line 78
    new-array v5, v3, [B

    .line 79
    .local v5, "value":[B
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v3, v7, :cond_1

    .line 80
    aget-byte v7, p0, v4

    aput-byte v7, v5, v6

    goto :goto_1

    .line 83
    :cond_1
    :try_start_0
    invoke-static {p0, v4, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_1

    .line 84
    :catch_0
    move-exception v6

    .line 85
    .local v6, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v6}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 88
    .end local v6    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_1
    add-int/2addr v4, v3

    .line 90
    invoke-static {v2, v3, v5}, Lcom/samsung/uwb/support/data/param/capsinfo/CapsInfoParameter;->find(BI[B)Lcom/samsung/uwb/support/data/param/TlvParam;

    move-result-object v6

    .line 91
    .local v6, "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    if-eqz v6, :cond_2

    .line 92
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .end local v2    # "tag":B
    .end local v3    # "length":I
    .end local v5    # "value":[B
    .end local v6    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :cond_2
    move v2, v4

    goto :goto_2

    .line 77
    .restart local v2    # "tag":B
    .restart local v3    # "length":I
    :cond_3
    move v2, v4

    .line 95
    .end local v3    # "length":I
    .end local v4    # "offset":I
    .local v2, "offset":I
    :goto_2
    goto :goto_0

    .line 96
    :cond_4
    return-object v0

    .line 67
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "offset":I
    :cond_5
    :goto_3
    return-object v0
.end method
