.class public final enum Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
.super Ljava/lang/Enum;
.source "MultimediaSession.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/extension/MultimediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReasonCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum ABORTED_BY_INACTIVITY:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum ABORTED_BY_REMOTE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum ABORTED_BY_USER:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum FAILED_INITIATION:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum FAILED_MEDIA:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum FAILED_SESSION:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECTED_BY_REMOTE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECTED_BY_SYSTEM:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECTED_BY_TIMEOUT:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECTED_BY_USER:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_BAD_REQUEST:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_BUSY:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_CS_CALL_IN_PROGRESS:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_DECLINE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_DEFAULT:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_DVC_FAILED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_LOW_BATTERY:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_MAX:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_MAX_FILE_SIZE_REACHED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_NOANS:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_NONE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_NOREG_INCOMCALL_RECVED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_NOT_IMPLEMENTED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_REMOTE_USER_INVALID:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_REQUEST_PENDING:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_REQ_TERMINATED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_SERVER_TIMEOUT:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_SERVICE_UNAVAILABLE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_TEMP_NOT_ACCEPTABLE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_TEMP_UNAVAILABLE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_UNSUPPORTED_MEDIA:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum REJECT_REASON_USER_CALL_BLOCK:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum UNSPECIFIED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mReasonCode:I


# direct methods
.method private static synthetic $values()[Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    .locals 35

    .line 33
    sget-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    sget-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->ABORTED_BY_USER:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->ABORTED_BY_REMOTE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    sget-object v4, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    sget-object v5, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->ABORTED_BY_INACTIVITY:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    sget-object v6, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECTED_BY_USER:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    sget-object v7, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECTED_BY_REMOTE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    sget-object v8, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECTED_BY_TIMEOUT:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    sget-object v9, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECTED_BY_SYSTEM:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    sget-object v10, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->FAILED_INITIATION:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    sget-object v11, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->FAILED_SESSION:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    sget-object v12, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->FAILED_MEDIA:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    sget-object v13, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_NONE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    sget-object v14, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_DEFAULT:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    sget-object v15, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_NOANS:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    sget-object v16, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_BUSY:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    sget-object v17, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_DECLINE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    sget-object v18, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_TEMP_UNAVAILABLE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    sget-object v19, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_DVC_FAILED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    sget-object v20, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_TEMP_NOT_ACCEPTABLE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    sget-object v21, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_CS_CALL_IN_PROGRESS:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    sget-object v22, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_BAD_REQUEST:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    sget-object v23, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_REQ_TERMINATED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    sget-object v24, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_SERVICE_UNAVAILABLE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    sget-object v25, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_UNSUPPORTED_MEDIA:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    sget-object v26, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_LOW_BATTERY:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    sget-object v27, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_REQUEST_PENDING:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    sget-object v28, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_USER_CALL_BLOCK:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    sget-object v29, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_MAX_FILE_SIZE_REACHED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    sget-object v30, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_NOREG_INCOMCALL_RECVED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    sget-object v31, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_REMOTE_USER_INVALID:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    sget-object v32, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_NOT_IMPLEMENTED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    sget-object v33, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_SERVER_TIMEOUT:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    sget-object v34, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_MAX:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    filled-new-array/range {v1 .. v34}, [Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 37
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 38
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v1, "ABORTED_BY_USER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->ABORTED_BY_USER:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 39
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v1, "ABORTED_BY_REMOTE"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->ABORTED_BY_REMOTE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 40
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v1, "ABORTED_BY_SYSTEM"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 41
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v1, "ABORTED_BY_INACTIVITY"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->ABORTED_BY_INACTIVITY:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 42
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v1, "REJECTED_BY_USER"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECTED_BY_USER:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 43
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v1, "REJECTED_BY_REMOTE"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECTED_BY_REMOTE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 44
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v1, "REJECTED_BY_TIMEOUT"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECTED_BY_TIMEOUT:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 45
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v1, "REJECTED_BY_SYSTEM"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECTED_BY_SYSTEM:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 46
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v1, "FAILED_INITIATION"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->FAILED_INITIATION:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 47
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v1, "FAILED_SESSION"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->FAILED_SESSION:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 48
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v1, "FAILED_MEDIA"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->FAILED_MEDIA:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 56
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v1, "REJECT_REASON_NONE"

    const/16 v3, 0xc

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_NONE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 57
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v1, "REJECT_REASON_DEFAULT"

    const/16 v3, 0xd

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_DEFAULT:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 58
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v1, "REJECT_REASON_NOANS"

    const/16 v3, 0xe

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_NOANS:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 59
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v1, "REJECT_REASON_BUSY"

    const/16 v3, 0xf

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_BUSY:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 60
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v1, "REJECT_REASON_DECLINE"

    const/16 v3, 0x10

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_DECLINE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 61
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v1, "REJECT_REASON_TEMP_UNAVAILABLE"

    const/16 v3, 0x11

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_TEMP_UNAVAILABLE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 62
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v1, "REJECT_REASON_DVC_FAILED"

    const/16 v3, 0x12

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_DVC_FAILED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 63
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v1, "REJECT_REASON_TEMP_NOT_ACCEPTABLE"

    const/16 v3, 0x13

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_TEMP_NOT_ACCEPTABLE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 64
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v1, "REJECT_REASON_CS_CALL_IN_PROGRESS"

    const/16 v3, 0x14

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_CS_CALL_IN_PROGRESS:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 65
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v1, "REJECT_REASON_BAD_REQUEST"

    const/16 v3, 0x15

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_BAD_REQUEST:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 66
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const/16 v1, 0x16

    const/16 v3, 0x16

    const-string v4, "REJECT_REASON_REQ_TERMINATED"

    invoke-direct {v0, v4, v1, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_REQ_TERMINATED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 67
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const/16 v1, 0x17

    const/16 v3, 0x17

    const-string v4, "REJECT_REASON_SERVICE_UNAVAILABLE"

    invoke-direct {v0, v4, v1, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_SERVICE_UNAVAILABLE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 68
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const/16 v1, 0x18

    const/16 v3, 0x18

    const-string v4, "REJECT_REASON_UNSUPPORTED_MEDIA"

    invoke-direct {v0, v4, v1, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_UNSUPPORTED_MEDIA:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 69
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const/16 v1, 0x19

    const/16 v3, 0x19

    const-string v4, "REJECT_REASON_LOW_BATTERY"

    invoke-direct {v0, v4, v1, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_LOW_BATTERY:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 70
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const/16 v1, 0x1a

    const/16 v3, 0x1a

    const-string v4, "REJECT_REASON_REQUEST_PENDING"

    invoke-direct {v0, v4, v1, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_REQUEST_PENDING:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 71
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const/16 v1, 0x1b

    const/16 v3, 0x1b

    const-string v4, "REJECT_REASON_USER_CALL_BLOCK"

    invoke-direct {v0, v4, v1, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_USER_CALL_BLOCK:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 72
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const/16 v1, 0x1c

    const/16 v3, 0x1c

    const-string v4, "REJECT_REASON_MAX_FILE_SIZE_REACHED"

    invoke-direct {v0, v4, v1, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_MAX_FILE_SIZE_REACHED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 73
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const/16 v1, 0x1d

    const/16 v3, 0x1d

    const-string v4, "REJECT_REASON_NOREG_INCOMCALL_RECVED"

    invoke-direct {v0, v4, v1, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_NOREG_INCOMCALL_RECVED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 74
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const/16 v1, 0x1e

    const/16 v3, 0x1e

    const-string v4, "REJECT_REASON_REMOTE_USER_INVALID"

    invoke-direct {v0, v4, v1, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_REMOTE_USER_INVALID:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 75
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const/16 v1, 0x1f

    const/16 v3, 0x1f

    const-string v4, "REJECT_REASON_NOT_IMPLEMENTED"

    invoke-direct {v0, v4, v1, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_NOT_IMPLEMENTED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 76
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const/16 v1, 0x20

    const/16 v3, 0x20

    const-string v4, "REJECT_REASON_SERVER_TIMEOUT"

    invoke-direct {v0, v4, v1, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_SERVER_TIMEOUT:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 77
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const/16 v1, 0x21

    const/16 v3, 0x21

    const-string v4, "REJECT_REASON_MAX"

    invoke-direct {v0, v4, v1, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_MAX:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 33
    invoke-static {}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->$values()[Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->$VALUES:[Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 83
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 94
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->mValueToEnum:Landroid/util/SparseArray;

    .line 96
    invoke-static {}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->values()[Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 97
    .local v3, "entry":Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    sget-object v4, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->toInt()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    .end local v3    # "entry":Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "reasonCode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    iput p3, p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->mReasonCode:I

    .line 118
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/os/Parcel;)V
    .locals 0
    .param p3, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->mReasonCode:I

    .line 122
    return-void
.end method

.method public static final valueOf(I)Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    .locals 4
    .param p0, "value"    # I

    .line 102
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 103
    .local v0, "entry":Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    if-eqz v0, :cond_0

    .line 104
    return-object v0

    .line 106
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No enum const class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    const-class v3, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 33
    const-class v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    .locals 1

    .line 33
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->$VALUES:[Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public final toInt()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->mReasonCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .line 131
    iget v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->mReasonCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    return-void
.end method
