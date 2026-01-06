.class public Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter;
.super Ljava/lang/Object;
.source "AppConfigParameter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;
    }
.end annotation


# static fields
.field public static final ALIRO_MAC_MODE:I = 0xa9

.field public static final AOA_RESULT_REQ:I = 0xd

.field public static final APPLICATION_DATA_ENDPOINT:I = 0x4c

.field public static final BLINK_RANDOM_INTERVAL:I = 0x33

.field public static final BLOCK_STRIDE_LENGTH:I = 0x2d

.field public static final BPRF_PHR_DATA_RATE:I = 0x31

.field public static final CAP_SIZE_RANGE:I = 0x20

.field public static final CHANNEL_NUMBER:I = 0x4

.field public static final DATA_REPETITION_COUNT:I = 0x19

.field public static final DATA_TRANSFER_MODE:I = 0x18

.field public static final DEVICE_MAC_ADDRESS:I = 0x6

.field public static final DEVICE_ROLE:I = 0x11

.field public static final DEVICE_TYPE:I = 0x0

.field public static final DL_TDOA_RESPONDER_TOF:I = 0x49

.field public static final DST_MAC_ADDRESS:I = 0x7

.field public static final HOPPING_MODE:I = 0x2c

.field public static final HOP_MODE_KEY:I = 0xa0

.field public static final INTER_FRAME_INTERVAL:I = 0x3c

.field public static final IN_BAND_TERMINATION_ATTEMPT_COUNT:I = 0x2f

.field public static final KEY_ROTATION:I = 0x23

.field public static final KEY_ROTATION_RATE:I = 0x24

.field public static final LAST_STS_INDEX_USED:I = 0xa8

.field public static final MAC_ADDRESS_MODE:I = 0x26

.field public static final MAC_FCS_TYPE:I = 0xb

.field public static final MAX_NUMBER_OF_MEASUREMENTS:I = 0x32

.field public static final MAX_RR_RETRY:I = 0x2a

.field public static final MIN_FRAMES_PER_RR:I = 0x3a

.field public static final MTU_SIZE:I = 0x3b

.field public static final MULTI_NODE_MODE:I = 0x3

.field public static final NUMBER_OF_CONTROLEES:I = 0x5

.field public static final NUMBER_OF_STS_SEGMENTS:I = 0x29

.field public static final OWR_AOA_MEASUREMENT_NTF_PERIOD:I = 0x4d

.field public static final PREAMBLE_CODE_INDEX:I = 0x14

.field public static final PREAMBLE_DURATION:I = 0x17

.field public static final PRF_MODE:I = 0x1f

.field public static final PROTOCOL_VERSION:I = 0xa3

.field public static final PSDU_DATA_RATE:I = 0x16

.field public static final PULSE_SHAPE_COMBO:I = 0xa5

.field public static final RANGE_DATA_NTF_AOA_BOUND:I = 0x1d

.field public static final RANGE_DATA_NTF_CONFIG:I = 0xe

.field public static final RANGE_DATA_NTF_PROXIMITY_FAR:I = 0x10

.field public static final RANGE_DATA_NTF_PROXIMITY_NEAR:I = 0xf

.field public static final RANGING_INTERVAL:I = 0x9

.field public static final RANGING_ROUND_CONTROL:I = 0xc

.field public static final RANGING_ROUND_USAGE:I = 0x1

.field public static final RANGING_TIME_STRUCT:I = 0x1a

.field public static final RESPONDER_SLOT_INDEX:I = 0x1e

.field public static final RESULT_REPORT_CONFIG:I = 0x2e

.field public static final RFRAME_CONFIG:I = 0x12

.field public static final RSSI_REPORTING:I = 0x13

.field public static final SCHEDULED_MODE:I = 0x22

.field public static final SECURE_RANGING_CSW_LENGTH:I = 0x4b

.field public static final SECURE_RANGING_NEFA_LEVEL:I = 0x4a

.field public static final SESSION_DATA_TRANSFER_STATUS_NTF_CONFIG:I = 0x47

.field public static final SESSION_KEY:I = 0x45

.field public static final SESSION_PRIORITY:I = 0x25

.field public static final SESSION_TIME_BASE:I = 0x48

.field public static final SFD_ID:I = 0x15

.field public static final SLOTS_PER_RR:I = 0x1b

.field public static final SLOT_DURATION:I = 0x8

.field public static final STATIC_STS_IV:I = 0x28

.field public static final STS_CONFIG:I = 0x2

.field public static final STS_INDEX:I = 0xa

.field public static final STS_LENGTH:I = 0x35

.field public static final SUB_SESSION_ID:I = 0x30

.field public static final SUB_SESSION_KEY:I = 0x46

.field public static final TDOA_REPORT_FREQUENCY:I = 0x34

.field public static final TX_ADAPTIVE_PAYLOAD_POWER:I = 0x1c

.field public static final URSK_TTL:I = 0xa6

.field public static final UWB_CONFIG_ID:I = 0xa4

.field public static final UWB_INITIATION_TIME:I = 0x2b

.field public static final VENDOR_ID:I = 0x27


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static find(BI[B)Lcom/samsung/uwb/support/data/param/TlvParam;
    .locals 2
    .param p0, "tag"    # B
    .param p1, "length"    # I
    .param p2, "value"    # [B

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    sparse-switch p0, :sswitch_data_0

    .line 425
    new-instance v1, Lcom/samsung/uwb/support/data/param/TlvParam;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .local v1, "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 392
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_0
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/OwrAoaMeasurementNtfPeriod;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/OwrAoaMeasurementNtfPeriod;-><init>(BI[B)V

    .line 393
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 388
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_1
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/ApplicationDataEndpoint;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/ApplicationDataEndpoint;-><init>(BI[B)V

    .line 389
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 384
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_2
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/SecureRangingCswLength;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/SecureRangingCswLength;-><init>(BI[B)V

    .line 385
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 380
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_3
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/SecureRangingNefaLevel;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/SecureRangingNefaLevel;-><init>(BI[B)V

    .line 381
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 376
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_4
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/DlTdoaResponderTof;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/DlTdoaResponderTof;-><init>(BI[B)V

    .line 377
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 372
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_5
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/SessionTimeBase;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/SessionTimeBase;-><init>(BI[B)V

    .line 373
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 368
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_6
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/SessionDataTransferStatusNtfConfig;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/SessionDataTransferStatusNtfConfig;-><init>(BI[B)V

    .line 369
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 364
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_7
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/SubSessionKey;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/SubSessionKey;-><init>(BI[B)V

    .line 365
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 360
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_8
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/SessionKey;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/SessionKey;-><init>(BI[B)V

    .line 361
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 356
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_9
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/InterFrameInterval;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/InterFrameInterval;-><init>(BI[B)V

    .line 357
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 352
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_a
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/MtuSize;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/MtuSize;-><init>(BI[B)V

    .line 353
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 348
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_b
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/MinFramesPerRr;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/MinFramesPerRr;-><init>(BI[B)V

    .line 349
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 344
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_c
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/StsLength;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/StsLength;-><init>(BI[B)V

    .line 345
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 340
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_d
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/MaxNumberOfMeasurements;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/MaxNumberOfMeasurements;-><init>(BI[B)V

    .line 341
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 336
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_e
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/BprfPhrDataRate;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/BprfPhrDataRate;-><init>(BI[B)V

    .line 337
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 332
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_f
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/SubSessionId;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/SubSessionId;-><init>(BI[B)V

    .line 333
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 328
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_10
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/InBandTerminationAttemptCount;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/InBandTerminationAttemptCount;-><init>(BI[B)V

    .line 329
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 324
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_11
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/ResultReportConfig;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/ResultReportConfig;-><init>(BI[B)V

    .line 325
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 320
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_12
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/BlockStrideLength;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/BlockStrideLength;-><init>(BI[B)V

    .line 321
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 316
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_13
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/HoppingMode;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/HoppingMode;-><init>(BI[B)V

    .line 317
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 312
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_14
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/UwbInitiationTime;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/UwbInitiationTime;-><init>(BI[B)V

    .line 313
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 308
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_15
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/MaxRrRetry;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/MaxRrRetry;-><init>(BI[B)V

    .line 309
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 304
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_16
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/NumberOfStsSegments;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/NumberOfStsSegments;-><init>(BI[B)V

    .line 305
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 300
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_17
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/StaticStsIv;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/StaticStsIv;-><init>(BI[B)V

    .line 301
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 296
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_18
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/VendorId;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/VendorId;-><init>(BI[B)V

    .line 297
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 292
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_19
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/MacAddressMode;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/MacAddressMode;-><init>(BI[B)V

    .line 293
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 288
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_1a
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/SessionPriority;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/SessionPriority;-><init>(BI[B)V

    .line 289
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 284
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_1b
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/KeyRotationRate;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/KeyRotationRate;-><init>(BI[B)V

    .line 285
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 280
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_1c
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/KeyRotation;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/KeyRotation;-><init>(BI[B)V

    .line 281
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 276
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_1d
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/ScheduledMode;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/ScheduledMode;-><init>(BI[B)V

    .line 277
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 272
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_1e
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/CapSize;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/CapSize;-><init>(BI[B)V

    .line 273
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 268
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_1f
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/PrfMode;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/PrfMode;-><init>(BI[B)V

    .line 269
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 264
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_20
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/ResponderSlotIndex;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/ResponderSlotIndex;-><init>(BI[B)V

    .line 265
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 260
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_21
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/TxAdaptivePayloadPower;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/TxAdaptivePayloadPower;-><init>(BI[B)V

    .line 261
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 256
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_22
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/SlotsPerRr;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/SlotsPerRr;-><init>(BI[B)V

    .line 257
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 252
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_23
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/RangingTimeStruct;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/RangingTimeStruct;-><init>(BI[B)V

    .line 253
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 248
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_24
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/DataRepetitionCount;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/DataRepetitionCount;-><init>(BI[B)V

    .line 249
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 244
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_25
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/DataTransferMode;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/DataTransferMode;-><init>(BI[B)V

    .line 245
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 240
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_26
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/PreambleDuration;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/PreambleDuration;-><init>(BI[B)V

    .line 241
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 236
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_27
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/PsduDataRate;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/PsduDataRate;-><init>(BI[B)V

    .line 237
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 232
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_28
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/SfdId;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/SfdId;-><init>(BI[B)V

    .line 233
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 228
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_29
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/PreambleCodeIndex;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/PreambleCodeIndex;-><init>(BI[B)V

    .line 229
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 224
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_2a
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/RssiReporting;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/RssiReporting;-><init>(BI[B)V

    .line 225
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 220
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_2b
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/RframeConfig;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/RframeConfig;-><init>(BI[B)V

    .line 221
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 216
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_2c
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/DeviceRole;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/DeviceRole;-><init>(BI[B)V

    .line 217
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 212
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_2d
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/RangeDataNtfProximityFar;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/RangeDataNtfProximityFar;-><init>(BI[B)V

    .line 213
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 208
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_2e
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/RangeDataNtfProximityNear;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/RangeDataNtfProximityNear;-><init>(BI[B)V

    .line 209
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 204
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_2f
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/RangeDataNtfConfig;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/RangeDataNtfConfig;-><init>(BI[B)V

    .line 205
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 200
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_30
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/AoaResultReq;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/AoaResultReq;-><init>(BI[B)V

    .line 201
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 196
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_31
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/RangingRoundControl;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/RangingRoundControl;-><init>(BI[B)V

    .line 197
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 192
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_32
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/MacFcsType;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/MacFcsType;-><init>(BI[B)V

    .line 193
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 188
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_33
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/StsIndex;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/StsIndex;-><init>(BI[B)V

    .line 189
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 184
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_34
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/RangingInterval;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/RangingInterval;-><init>(BI[B)V

    .line 185
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto/16 :goto_0

    .line 180
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_35
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/SlotDuration;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/SlotDuration;-><init>(BI[B)V

    .line 181
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 176
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_36
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/DstMacAddress;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/DstMacAddress;-><init>(BI[B)V

    .line 177
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 172
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_37
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/DeviceMacAddress;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/DeviceMacAddress;-><init>(BI[B)V

    .line 173
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 168
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_38
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/NumberOfControlees;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/NumberOfControlees;-><init>(BI[B)V

    .line 169
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 164
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_39
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/ChannelNumber;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/ChannelNumber;-><init>(BI[B)V

    .line 165
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 160
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_3a
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/MultiNodeMode;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/MultiNodeMode;-><init>(BI[B)V

    .line 161
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 156
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_3b
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/StsConfig;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/StsConfig;-><init>(BI[B)V

    .line 157
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 152
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_3c
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/RangingRoundUsage;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/RangingRoundUsage;-><init>(BI[B)V

    .line 153
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 148
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_3d
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/DeviceType;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/DeviceType;-><init>(BI[B)V

    .line 149
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 420
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_3e
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/AliroMacMode;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/AliroMacMode;-><init>(BI[B)V

    .line 421
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 416
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_3f
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/LastStsIndex;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/LastStsIndex;-><init>(BI[B)V

    .line 417
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 412
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_40
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/UrskTTL;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/UrskTTL;-><init>(BI[B)V

    .line 413
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 408
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_41
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/PulseShapeCombo;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/PulseShapeCombo;-><init>(BI[B)V

    .line 409
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 404
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_42
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/UwbConfigId;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/UwbConfigId;-><init>(BI[B)V

    .line 405
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 400
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_43
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/ProtocolVersion;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/ProtocolVersion;-><init>(BI[B)V

    .line 401
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 396
    .end local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :sswitch_44
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/HopModeKey;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/uwb/support/data/param/appconfig/HopModeKey;-><init>(BI[B)V

    .line 397
    .end local v0    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v1    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    nop

    .line 429
    :goto_0
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x60 -> :sswitch_44
        -0x5d -> :sswitch_43
        -0x5c -> :sswitch_42
        -0x5b -> :sswitch_41
        -0x5a -> :sswitch_40
        -0x58 -> :sswitch_3f
        -0x57 -> :sswitch_3e
        0x0 -> :sswitch_3d
        0x1 -> :sswitch_3c
        0x2 -> :sswitch_3b
        0x3 -> :sswitch_3a
        0x4 -> :sswitch_39
        0x5 -> :sswitch_38
        0x6 -> :sswitch_37
        0x7 -> :sswitch_36
        0x8 -> :sswitch_35
        0x9 -> :sswitch_34
        0xa -> :sswitch_33
        0xb -> :sswitch_32
        0xc -> :sswitch_31
        0xd -> :sswitch_30
        0xe -> :sswitch_2f
        0xf -> :sswitch_2e
        0x10 -> :sswitch_2d
        0x11 -> :sswitch_2c
        0x12 -> :sswitch_2b
        0x13 -> :sswitch_2a
        0x14 -> :sswitch_29
        0x15 -> :sswitch_28
        0x16 -> :sswitch_27
        0x17 -> :sswitch_26
        0x18 -> :sswitch_25
        0x19 -> :sswitch_24
        0x1a -> :sswitch_23
        0x1b -> :sswitch_22
        0x1c -> :sswitch_21
        0x1e -> :sswitch_20
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_1e
        0x22 -> :sswitch_1d
        0x23 -> :sswitch_1c
        0x24 -> :sswitch_1b
        0x25 -> :sswitch_1a
        0x26 -> :sswitch_19
        0x27 -> :sswitch_18
        0x28 -> :sswitch_17
        0x29 -> :sswitch_16
        0x2a -> :sswitch_15
        0x2b -> :sswitch_14
        0x2c -> :sswitch_13
        0x2d -> :sswitch_12
        0x2e -> :sswitch_11
        0x2f -> :sswitch_10
        0x30 -> :sswitch_f
        0x31 -> :sswitch_e
        0x32 -> :sswitch_d
        0x35 -> :sswitch_c
        0x3a -> :sswitch_b
        0x3b -> :sswitch_a
        0x3c -> :sswitch_9
        0x45 -> :sswitch_8
        0x46 -> :sswitch_7
        0x47 -> :sswitch_6
        0x48 -> :sswitch_5
        0x49 -> :sswitch_4
        0x4a -> :sswitch_3
        0x4b -> :sswitch_2
        0x4c -> :sswitch_1
        0x4d -> :sswitch_0
    .end sparse-switch
.end method

.method public static getTagName(I)Ljava/lang/String;
    .locals 8
    .param p0, "tag"    # I

    .line 602
    const-class v0, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 603
    .local v4, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 604
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 605
    .local v5, "name":Ljava/lang/String;
    new-instance v6, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter;

    invoke-direct {v6}, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 606
    .local v6, "value":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v7, p0, :cond_0

    .line 607
    return-object v5

    .line 602
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 613
    :cond_1
    goto :goto_1

    .line 610
    :catch_0
    move-exception v1

    .line 611
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 612
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "getTagName Exception"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v0, "INVALID"

    return-object v0
.end method

.method public static final parse([BI)Ljava/util/List;
    .locals 12
    .param p0, "tlvArray"    # [B
    .param p1, "numOfParams"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "Lcom/samsung/uwb/support/data/param/TlvParam;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    if-eqz p0, :cond_8

    array-length v1, p0

    if-eqz v1, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 96
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 97
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 99
    const/4 v2, 0x0

    .line 100
    .local v2, "offset":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, p1, :cond_7

    .line 101
    const/4 v4, 0x2

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    .line 102
    .local v4, "tag":[B
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "offset":I
    .local v5, "offset":I
    aget-byte v2, p0, v2

    const/4 v6, 0x0

    aput-byte v2, v4, v6

    .line 103
    aget-byte v2, v4, v6

    invoke-static {v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isExtendedTag(B)Z

    move-result v2

    .line 104
    .local v2, "isExtendedTag":Z
    const/4 v7, 0x1

    if-eqz v2, :cond_1

    .line 105
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "offset":I
    .local v8, "offset":I
    aget-byte v5, p0, v5

    aput-byte v5, v4, v7

    move v5, v8

    .line 107
    .end local v8    # "offset":I
    .restart local v5    # "offset":I
    :cond_1
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "offset":I
    .restart local v8    # "offset":I
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    .line 108
    .local v5, "length":I
    if-eqz v5, :cond_5

    .line 109
    new-array v9, v5, [B

    .line 110
    .local v9, "value":[B
    if-ne v5, v7, :cond_2

    .line 111
    aget-byte v10, p0, v8

    aput-byte v10, v9, v6

    goto :goto_1

    .line 114
    :cond_2
    :try_start_0
    invoke-static {p0, v8, v9, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    goto :goto_1

    .line 115
    :catch_0
    move-exception v10

    .line 116
    .local v10, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v10}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 119
    .end local v10    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_1
    add-int/2addr v8, v5

    .line 122
    if-nez v2, :cond_3

    .line 123
    aget-byte v6, v4, v6

    invoke-static {v6, v5, v9}, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter;->find(BI[B)Lcom/samsung/uwb/support/data/param/TlvParam;

    move-result-object v6

    .local v6, "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_2

    .line 125
    .end local v6    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :cond_3
    new-instance v10, Lcom/samsung/uwb/support/data/param/TlvParam;

    aget-byte v6, v4, v6

    aget-byte v7, v4, v7

    invoke-direct {v10, v6, v7, v5, v9}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BBI[B)V

    move-object v6, v10

    .line 128
    .restart local v6    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :goto_2
    if-eqz v6, :cond_4

    .line 129
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    .end local v6    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .end local v9    # "value":[B
    :cond_4
    move v2, v8

    goto :goto_4

    .line 132
    :cond_5
    const/4 v9, 0x0

    .line 133
    .local v9, "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    const/4 v10, 0x0

    if-nez v2, :cond_6

    .line 134
    new-instance v7, Lcom/samsung/uwb/support/data/param/TlvParam;

    aget-byte v6, v4, v6

    invoke-direct {v7, v6, v5, v10}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .end local v9    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .local v7, "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_3

    .line 136
    .end local v7    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v9    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :cond_6
    new-instance v11, Lcom/samsung/uwb/support/data/param/TlvParam;

    aget-byte v6, v4, v6

    aget-byte v7, v4, v7

    invoke-direct {v11, v6, v7, v5, v10}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BBI[B)V

    move-object v7, v11

    .line 138
    .end local v9    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .restart local v7    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    :goto_3
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v8

    .line 100
    .end local v4    # "tag":[B
    .end local v5    # "length":I
    .end local v7    # "tlvParam":Lcom/samsung/uwb/support/data/param/TlvParam;
    .end local v8    # "offset":I
    .local v2, "offset":I
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 141
    .end local v3    # "index":I
    :cond_7
    return-object v0

    .line 93
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "offset":I
    :cond_8
    :goto_5
    return-object v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method
