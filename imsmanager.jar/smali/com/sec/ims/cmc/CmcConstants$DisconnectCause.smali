.class public Lcom/sec/ims/cmc/CmcConstants$DisconnectCause;
.super Ljava/lang/Object;
.source "CmcConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/cmc/CmcConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisconnectCause"
.end annotation


# static fields
.field public static final ALREADY_DIALING:I = 0x48

.field public static final ANSWERED_ELSEWHERE:I = 0x34

.field public static final BUSY:I = 0x4

.field public static final CALLING_DISABLED:I = 0x4a

.field public static final CALL_BARRED:I = 0x14

.field public static final CALL_PULLED:I = 0x33

.field public static final CANT_CALL_WHILE_RINGING:I = 0x49

.field public static final CDMA_ACCESS_BLOCKED:I = 0x23

.field public static final CDMA_ACCESS_FAILURE:I = 0x20

.field public static final CDMA_ALREADY_ACTIVATED:I = 0x31

.field public static final CDMA_CALL_LOST:I = 0x29

.field public static final CDMA_DROP:I = 0x1b

.field public static final CDMA_INTERCEPT:I = 0x1c

.field public static final CDMA_LOCKED_UNTIL_POWER_CYCLE:I = 0x1a

.field public static final CDMA_NOT_EMERGENCY:I = 0x22

.field public static final CDMA_PREEMPTED:I = 0x21

.field public static final CDMA_REORDER:I = 0x1d

.field public static final CDMA_RETRY_ORDER:I = 0x1f

.field public static final CDMA_SO_REJECT:I = 0x1e

.field public static final CONGESTION:I = 0x5

.field public static final CS_CALL_NOT_AVAILABLE:I = 0xf9

.field public static final CS_RESTRICTED:I = 0x16

.field public static final CS_RESTRICTED_EMERGENCY:I = 0x18

.field public static final CS_RESTRICTED_NORMAL:I = 0x17

.field public static final DATA_DISABLED:I = 0x36

.field public static final DATA_LIMIT_REACHED:I = 0x37

.field public static final DIALED_CALL_FORWARDING_WHILE_ROAMING:I = 0x39

.field public static final DIALED_MMI:I = 0x27

.field public static final DIAL_LOW_BATTERY:I = 0x3e

.field public static final DIAL_MODIFIED_TO_DIAL:I = 0x30

.field public static final DIAL_MODIFIED_TO_DIAL_VIDEO:I = 0x42

.field public static final DIAL_MODIFIED_TO_SS:I = 0x2f

.field public static final DIAL_MODIFIED_TO_USSD:I = 0x2e

.field public static final DIAL_VIDEO_MODIFIED_TO_DIAL:I = 0x45

.field public static final DIAL_VIDEO_MODIFIED_TO_DIAL_VIDEO:I = 0x46

.field public static final DIAL_VIDEO_MODIFIED_TO_SS:I = 0x43

.field public static final DIAL_VIDEO_MODIFIED_TO_USSD:I = 0x44

.field public static final EMERGENCY_CALL_OVER_WFC_NOT_AVAILABLE:I = 0x4e

.field public static final EMERGENCY_ONLY:I = 0x25

.field public static final EMERGENCY_PERM_FAILURE:I = 0x40

.field public static final EMERGENCY_TEMP_FAILURE:I = 0x3f

.field public static final ERROR_UNSPECIFIED:I = 0x24

.field public static final EXITED_ECM:I = 0x2a

.field public static final FDN_BLOCKED:I = 0x15

.field public static final ICC_ERROR:I = 0x13

.field public static final IMEI_NOT_ACCEPTED:I = 0x3a

.field public static final IMS_ACCESS_BLOCKED:I = 0x3c

.field public static final IMS_MERGED_SUCCESSFULLY:I = 0x2d

.field public static final IMS_SIP_ALTERNATE_EMERGENCY_CALL:I = 0x47

.field public static final INCOMING_AUTO_REJECTED:I = 0x51

.field public static final INCOMING_MISSED:I = 0x1

.field public static final INCOMING_REJECTED:I = 0x10

.field public static final INVALID_CREDENTIALS:I = 0xa

.field public static final INVALID_NUMBER:I = 0x7

.field public static final LIMIT_EXCEEDED:I = 0xf

.field public static final LOCAL:I = 0x3

.field public static final LOST_SIGNAL:I = 0xe

.field public static final LOW_BATTERY:I = 0x3d

.field public static final MAXIMUM_NUMBER_OF_CALLS_REACHED:I = 0x35

.field public static final MEDIA_TIMEOUT:I = 0x4d

.field public static final MMI:I = 0x6

.field public static final NORMAL:I = 0x2

.field public static final NORMAL_UNSPECIFIED:I = 0x41

.field public static final NOT_DISCONNECTED:I = 0x0

.field public static final NOT_POSSIBLE_TO_START_VIDEO_CALL:I = 0xc8

.field public static final NOT_VALID:I = -0x1

.field public static final NO_PHONE_NUMBER_SUPPLIED:I = 0x26

.field public static final NUMBER_UNREACHABLE:I = 0x8

.field public static final OTASP_PROVISIONING_IN_PROCESS:I = 0x4c

.field public static final OUTGOING_CANCELED:I = 0x2c

.field public static final OUTGOING_EMERGENCY_CALL_PLACED:I = 0x50

.field public static final OUTGOING_FAILURE:I = 0x2b

.field public static final OUT_OF_NETWORK:I = 0xb

.field public static final OUT_OF_SERVICE:I = 0x12

.field public static final POWER_OFF:I = 0x11

.field public static final SERVER_ERROR:I = 0xc

.field public static final SERVER_UNREACHABLE:I = 0x9

.field public static final TIMED_OUT:I = 0xd

.field public static final TOO_MANY_ONGOING_CALLS:I = 0x4b

.field public static final UNOBTAINABLE_NUMBER:I = 0x19

.field public static final VIDEO_CALL_NOT_ALLOWED_WHILE_TTY_ENABLED:I = 0x32

.field public static final VOICEMAIL_NUMBER_MISSING:I = 0x28

.field public static final WFC_SERVICE_NOT_AVAILABLE_IN_THIS_LOCATION:I = 0x4f

.field public static final WIFI_LOST:I = 0x3b


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
