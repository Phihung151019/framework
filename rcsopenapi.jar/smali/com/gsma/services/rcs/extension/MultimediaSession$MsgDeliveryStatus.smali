.class public final enum Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;
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
    name = "MsgDeliveryStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum MSRP_RESP_CODE_200_SUCCESS:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum MSRP_RESP_CODE_400_UNINTELLIGIBLE:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum MSRP_RESP_CODE_403_ACTION_NOT_ALLOWED:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum MSRP_RESP_CODE_408_TRANS_TIMEOUT:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum MSRP_RESP_CODE_413_DONOT_SEND_THIS_MSG:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum MSRP_RESP_CODE_415_UNKNOWN_CNT_TYPE:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum MSRP_RESP_CODE_423_PARAM_OUT_OF_BOUND:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum MSRP_RESP_CODE_481_SESSION_NOT_EXIST:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum MSRP_RESP_CODE_501_UNKNOWN_METHOD:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum MSRP_RESP_CODE_506_SESSION_ON_ANOTHER_CONN:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum MSRP_RESP_CODE_INVALID:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum MSRP_RESP_CODE_UNKNOWN:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMsgDeliveryStatus:I


# direct methods
.method private static synthetic $values()[Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;
    .locals 12

    .line 239
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_INVALID:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    sget-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_UNKNOWN:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    sget-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_200_SUCCESS:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_400_UNINTELLIGIBLE:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    sget-object v4, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_403_ACTION_NOT_ALLOWED:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    sget-object v5, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_408_TRANS_TIMEOUT:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    sget-object v6, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_413_DONOT_SEND_THIS_MSG:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    sget-object v7, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_415_UNKNOWN_CNT_TYPE:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    sget-object v8, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_423_PARAM_OUT_OF_BOUND:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    sget-object v9, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_481_SESSION_NOT_EXIST:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    sget-object v10, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_501_UNKNOWN_METHOD:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    sget-object v11, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_506_SESSION_ON_ANOTHER_CONN:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    filled-new-array/range {v0 .. v11}, [Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 244
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const/16 v1, 0xc6

    const-string v2, "MSRP_RESP_CODE_INVALID"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_INVALID:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    .line 247
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const/4 v1, 0x1

    const/16 v2, 0xc7

    const-string v4, "MSRP_RESP_CODE_UNKNOWN"

    invoke-direct {v0, v4, v1, v2}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_UNKNOWN:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    .line 248
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const/4 v1, 0x2

    const/16 v2, 0xc8

    const-string v4, "MSRP_RESP_CODE_200_SUCCESS"

    invoke-direct {v0, v4, v1, v2}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_200_SUCCESS:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    .line 249
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const/4 v1, 0x3

    const/16 v2, 0x190

    const-string v4, "MSRP_RESP_CODE_400_UNINTELLIGIBLE"

    invoke-direct {v0, v4, v1, v2}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_400_UNINTELLIGIBLE:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    .line 250
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const/4 v1, 0x4

    const/16 v2, 0x193

    const-string v4, "MSRP_RESP_CODE_403_ACTION_NOT_ALLOWED"

    invoke-direct {v0, v4, v1, v2}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_403_ACTION_NOT_ALLOWED:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    .line 251
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const/4 v1, 0x5

    const/16 v2, 0x198

    const-string v4, "MSRP_RESP_CODE_408_TRANS_TIMEOUT"

    invoke-direct {v0, v4, v1, v2}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_408_TRANS_TIMEOUT:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    .line 252
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const/4 v1, 0x6

    const/16 v2, 0x19d

    const-string v4, "MSRP_RESP_CODE_413_DONOT_SEND_THIS_MSG"

    invoke-direct {v0, v4, v1, v2}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_413_DONOT_SEND_THIS_MSG:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    .line 253
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const/4 v1, 0x7

    const/16 v2, 0x19f

    const-string v4, "MSRP_RESP_CODE_415_UNKNOWN_CNT_TYPE"

    invoke-direct {v0, v4, v1, v2}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_415_UNKNOWN_CNT_TYPE:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    .line 254
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const/16 v1, 0x8

    const/16 v2, 0x1a7

    const-string v4, "MSRP_RESP_CODE_423_PARAM_OUT_OF_BOUND"

    invoke-direct {v0, v4, v1, v2}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_423_PARAM_OUT_OF_BOUND:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    .line 255
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const/16 v1, 0x9

    const/16 v2, 0x1e1

    const-string v4, "MSRP_RESP_CODE_481_SESSION_NOT_EXIST"

    invoke-direct {v0, v4, v1, v2}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_481_SESSION_NOT_EXIST:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    .line 256
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const/16 v1, 0xa

    const/16 v2, 0x1f5

    const-string v4, "MSRP_RESP_CODE_501_UNKNOWN_METHOD"

    invoke-direct {v0, v4, v1, v2}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_501_UNKNOWN_METHOD:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    .line 257
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const/16 v1, 0xb

    const/16 v2, 0x1fa

    const-string v4, "MSRP_RESP_CODE_506_SESSION_ON_ANOTHER_CONN"

    invoke-direct {v0, v4, v1, v2}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_506_SESSION_ON_ANOTHER_CONN:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    .line 239
    invoke-static {}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->$values()[Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->$VALUES:[Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    .line 263
    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 274
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->mValueToEnum:Landroid/util/SparseArray;

    .line 276
    invoke-static {}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->values()[Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 277
    .local v2, "entry":Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;
    sget-object v4, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->toInt()I

    move-result v5

    invoke-virtual {v4, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 276
    .end local v2    # "entry":Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 279
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "statusCode"    # I
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

    .line 296
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 297
    iput p3, p0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->mMsgDeliveryStatus:I

    .line 298
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

    .line 300
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->mMsgDeliveryStatus:I

    .line 302
    return-void
.end method

.method public static final valueOf(I)Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;
    .locals 4
    .param p0, "value"    # I

    .line 282
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    .line 283
    .local v0, "entry":Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;
    if-eqz v0, :cond_0

    .line 284
    return-object v0

    .line 286
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No enum const class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    const-class v3, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;
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

    .line 239
    const-class v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;
    .locals 1

    .line 239
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->$VALUES:[Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public final toInt()I
    .locals 1

    .line 294
    iget v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->mMsgDeliveryStatus:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .line 311
    iget v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->mMsgDeliveryStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    return-void
.end method
