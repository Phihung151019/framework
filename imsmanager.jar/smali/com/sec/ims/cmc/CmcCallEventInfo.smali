.class public Lcom/sec/ims/cmc/CmcCallEventInfo;
.super Ljava/lang/Object;
.source "CmcCallEventInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/cmc/CmcCallEventInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/cmc/CmcCallEventInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "CmcCallEventInfo"


# instance fields
.field private mCallExtras:Landroid/os/Bundle;

.field private mCallId:I

.field private mCallRadioTech:I

.field private mCmcCallTime:Ljava/lang/String;

.field private mCnapName:Ljava/lang/String;

.field private mCnapNamePresentation:I

.field private mDialogId:Ljava/lang/String;

.field private mDirection:I

.field private mDisconnectCause:I

.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;

.field private mExternalCallSlotAtPd:I

.field private mIsPulledCall:Z

.field private mNumberPresentation:I

.field private mPeerUri:Ljava/lang/String;

.field private mPulledDialogId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 240
    new-instance v0, Lcom/sec/ims/cmc/CmcCallEventInfo$1;

    invoke-direct {v0}, Lcom/sec/ims/cmc/CmcCallEventInfo$1;-><init>()V

    sput-object v0, Lcom/sec/ims/cmc/CmcCallEventInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallId:I

    .line 27
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mPeerUri:Ljava/lang/String;

    .line 28
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mDirection:I

    const/4 v2, 0x0

    .line 29
    iput v2, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallRadioTech:I

    .line 30
    iput-boolean v2, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mIsPulledCall:Z

    const/4 v3, 0x1

    .line 31
    iput v3, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mNumberPresentation:I

    .line 32
    iput-object v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCnapName:Ljava/lang/String;

    .line 33
    iput v3, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCnapNamePresentation:I

    .line 34
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mExternalCallSlotAtPd:I

    .line 35
    iput-object v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mPulledDialogId:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mDialogId:Ljava/lang/String;

    .line 37
    iput v2, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mErrorCode:I

    .line 38
    iput-object v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mErrorMessage:Ljava/lang/String;

    .line 39
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mDisconnectCause:I

    .line 40
    iput-object v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCmcCallTime:Ljava/lang/String;

    .line 271
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallExtras:Landroid/os/Bundle;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallId:I

    .line 27
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mPeerUri:Ljava/lang/String;

    .line 28
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mDirection:I

    const/4 v2, 0x0

    .line 29
    iput v2, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallRadioTech:I

    .line 30
    iput-boolean v2, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mIsPulledCall:Z

    const/4 v3, 0x1

    .line 31
    iput v3, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mNumberPresentation:I

    .line 32
    iput-object v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCnapName:Ljava/lang/String;

    .line 33
    iput v3, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCnapNamePresentation:I

    .line 34
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mExternalCallSlotAtPd:I

    .line 35
    iput-object v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mPulledDialogId:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mDialogId:Ljava/lang/String;

    .line 37
    iput v2, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mErrorCode:I

    .line 38
    iput-object v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mErrorMessage:Ljava/lang/String;

    .line 39
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mDisconnectCause:I

    .line 40
    iput-object v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCmcCallTime:Ljava/lang/String;

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallId:I

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mPeerUri:Ljava/lang/String;

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mDirection:I

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallRadioTech:I

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v3, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mIsPulledCall:Z

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mNumberPresentation:I

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCnapName:Ljava/lang/String;

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCnapNamePresentation:I

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mExternalCallSlotAtPd:I

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mPulledDialogId:Ljava/lang/String;

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mDialogId:Ljava/lang/String;

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mErrorCode:I

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mErrorMessage:Ljava/lang/String;

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mDisconnectCause:I

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCmcCallTime:Ljava/lang/String;

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/cmc/CmcCallEventInfo-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/ims/cmc/CmcCallEventInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/cmc/CmcCallEventInfo$Builder;)V
    .locals 4

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallId:I

    .line 27
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mPeerUri:Ljava/lang/String;

    .line 28
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mDirection:I

    const/4 v2, 0x0

    .line 29
    iput v2, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallRadioTech:I

    .line 30
    iput-boolean v2, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mIsPulledCall:Z

    const/4 v3, 0x1

    .line 31
    iput v3, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mNumberPresentation:I

    .line 32
    iput-object v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCnapName:Ljava/lang/String;

    .line 33
    iput v3, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCnapNamePresentation:I

    .line 34
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mExternalCallSlotAtPd:I

    .line 35
    iput-object v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mPulledDialogId:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mDialogId:Ljava/lang/String;

    .line 37
    iput v2, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mErrorCode:I

    .line 38
    iput-object v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mErrorMessage:Ljava/lang/String;

    .line 39
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mDisconnectCause:I

    .line 40
    iput-object v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCmcCallTime:Ljava/lang/String;

    .line 293
    iget v0, p1, Lcom/sec/ims/cmc/CmcCallEventInfo$Builder;->mCallId:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallId:I

    .line 294
    iget-object v0, p1, Lcom/sec/ims/cmc/CmcCallEventInfo$Builder;->mPeerUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mPeerUri:Ljava/lang/String;

    .line 295
    iget v0, p1, Lcom/sec/ims/cmc/CmcCallEventInfo$Builder;->mDirection:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mDirection:I

    .line 296
    iget v0, p1, Lcom/sec/ims/cmc/CmcCallEventInfo$Builder;->mCallRadioTech:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallRadioTech:I

    .line 297
    iget-boolean v0, p1, Lcom/sec/ims/cmc/CmcCallEventInfo$Builder;->mIsPulledCall:Z

    iput-boolean v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mIsPulledCall:Z

    .line 298
    iget v0, p1, Lcom/sec/ims/cmc/CmcCallEventInfo$Builder;->mNumberPresentation:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mNumberPresentation:I

    .line 299
    iget-object v0, p1, Lcom/sec/ims/cmc/CmcCallEventInfo$Builder;->mCnapName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCnapName:Ljava/lang/String;

    .line 300
    iget v0, p1, Lcom/sec/ims/cmc/CmcCallEventInfo$Builder;->mCnapNamePresentation:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCnapNamePresentation:I

    .line 301
    iget v0, p1, Lcom/sec/ims/cmc/CmcCallEventInfo$Builder;->mExternalCallSlotAtPd:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mExternalCallSlotAtPd:I

    .line 302
    invoke-static {p1}, Lcom/sec/ims/cmc/CmcCallEventInfo$Builder;->-$$Nest$fgetmPulledDialogId(Lcom/sec/ims/cmc/CmcCallEventInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mPulledDialogId:Ljava/lang/String;

    .line 303
    invoke-static {p1}, Lcom/sec/ims/cmc/CmcCallEventInfo$Builder;->-$$Nest$fgetmDialogId(Lcom/sec/ims/cmc/CmcCallEventInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mDialogId:Ljava/lang/String;

    .line 304
    iget v0, p1, Lcom/sec/ims/cmc/CmcCallEventInfo$Builder;->mErrorCode:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mErrorCode:I

    .line 305
    iget-object v0, p1, Lcom/sec/ims/cmc/CmcCallEventInfo$Builder;->mErrorMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mErrorMessage:Ljava/lang/String;

    .line 306
    iget v0, p1, Lcom/sec/ims/cmc/CmcCallEventInfo$Builder;->mDisconnectCause:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mDisconnectCause:I

    .line 307
    iget-object v0, p1, Lcom/sec/ims/cmc/CmcCallEventInfo$Builder;->mCmcCallTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCmcCallTime:Ljava/lang/String;

    .line 308
    iget-object p1, p1, Lcom/sec/ims/cmc/CmcCallEventInfo$Builder;->mCallExtras:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallExtras:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/cmc/CmcCallEventInfo;)V
    .locals 4

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallId:I

    .line 27
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mPeerUri:Ljava/lang/String;

    .line 28
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mDirection:I

    const/4 v2, 0x0

    .line 29
    iput v2, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallRadioTech:I

    .line 30
    iput-boolean v2, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mIsPulledCall:Z

    const/4 v3, 0x1

    .line 31
    iput v3, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mNumberPresentation:I

    .line 32
    iput-object v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCnapName:Ljava/lang/String;

    .line 33
    iput v3, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCnapNamePresentation:I

    .line 34
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mExternalCallSlotAtPd:I

    .line 35
    iput-object v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mPulledDialogId:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mDialogId:Ljava/lang/String;

    .line 37
    iput v2, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mErrorCode:I

    .line 38
    iput-object v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mErrorMessage:Ljava/lang/String;

    .line 39
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mDisconnectCause:I

    .line 40
    iput-object v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCmcCallTime:Ljava/lang/String;

    .line 274
    iget v0, p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallId:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallId:I

    .line 275
    iget-object v0, p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->mPeerUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mPeerUri:Ljava/lang/String;

    .line 276
    iget v0, p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->mDirection:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mDirection:I

    .line 277
    iget v0, p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallRadioTech:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallRadioTech:I

    .line 278
    iget-boolean v0, p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->mIsPulledCall:Z

    iput-boolean v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mIsPulledCall:Z

    .line 279
    iget v0, p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->mNumberPresentation:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mNumberPresentation:I

    .line 280
    iget-object v0, p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCnapName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCnapName:Ljava/lang/String;

    .line 281
    iget v0, p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCnapNamePresentation:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCnapNamePresentation:I

    .line 282
    iget v0, p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->mExternalCallSlotAtPd:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mExternalCallSlotAtPd:I

    .line 283
    iget-object v0, p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->mPulledDialogId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mPulledDialogId:Ljava/lang/String;

    .line 284
    iget-object v0, p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->mDialogId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mDialogId:Ljava/lang/String;

    .line 285
    iget v0, p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->mErrorCode:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mErrorCode:I

    .line 286
    iget-object v0, p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->mErrorMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mErrorMessage:Ljava/lang/String;

    .line 287
    iget v0, p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->mDisconnectCause:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mDisconnectCause:I

    .line 288
    iget-object v0, p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCmcCallTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCmcCallTime:Ljava/lang/String;

    .line 289
    iget-object p1, p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallExtras:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallExtras:Landroid/os/Bundle;

    return-void
.end method

.method private static areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    return v1

    .line 368
    :cond_1
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 370
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 371
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 372
    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    if-ne p0, p1, :cond_5

    return v0

    :cond_5
    return v1
.end method

.method public static getBuilder()Lcom/sec/ims/cmc/CmcCallEventInfo$Builder;
    .locals 1

    .line 402
    new-instance v0, Lcom/sec/ims/cmc/CmcCallEventInfo$Builder;

    invoke-direct {v0}, Lcom/sec/ims/cmc/CmcCallEventInfo$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 314
    :cond_0
    instance-of v0, p1, Lcom/sec/ims/cmc/CmcCallEventInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 316
    :cond_1
    check-cast p1, Lcom/sec/ims/cmc/CmcCallEventInfo;

    .line 318
    iget v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallId:I

    iget v2, p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallId:I

    if-eq v0, v2, :cond_2

    return v1

    .line 319
    :cond_2
    iget-object v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mPeerUri:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 320
    iget-object v0, p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->mPeerUri:Ljava/lang/String;

    if-eqz v0, :cond_4

    return v1

    .line 323
    :cond_3
    iget-object v2, p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->mPeerUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 326
    :cond_4
    iget v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mDirection:I

    iget v2, p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->mDirection:I

    if-eq v0, v2, :cond_5

    return v1

    .line 327
    :cond_5
    iget v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallRadioTech:I

    iget v2, p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallRadioTech:I

    if-eq v0, v2, :cond_6

    return v1

    .line 328
    :cond_6
    iget-boolean v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mIsPulledCall:Z

    iget-boolean v2, p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->mIsPulledCall:Z

    if-eq v0, v2, :cond_7

    return v1

    .line 329
    :cond_7
    iget v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mNumberPresentation:I

    iget v2, p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->mNumberPresentation:I

    if-eq v0, v2, :cond_8

    return v1

    .line 330
    :cond_8
    iget-object v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCnapName:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 331
    iget-object v0, p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCnapName:Ljava/lang/String;

    if-eqz v0, :cond_a

    return v1

    .line 334
    :cond_9
    iget-object v2, p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCnapName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    return v1

    .line 337
    :cond_a
    iget v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCnapNamePresentation:I

    iget v2, p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCnapNamePresentation:I

    if-eq v0, v2, :cond_b

    return v1

    .line 338
    :cond_b
    iget v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mExternalCallSlotAtPd:I

    iget v2, p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->mExternalCallSlotAtPd:I

    if-eq v0, v2, :cond_c

    return v1

    .line 339
    :cond_c
    iget v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mErrorCode:I

    iget v2, p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->mErrorCode:I

    if-eq v0, v2, :cond_d

    return v1

    .line 340
    :cond_d
    iget-object v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mErrorMessage:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 341
    iget-object v0, p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->mErrorMessage:Ljava/lang/String;

    if-eqz v0, :cond_f

    return v1

    .line 344
    :cond_e
    iget-object v2, p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    .line 347
    :cond_f
    iget v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mDisconnectCause:I

    iget v2, p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->mDisconnectCause:I

    if-eq v0, v2, :cond_10

    return v1

    .line 348
    :cond_10
    iget-object v0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCmcCallTime:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 349
    iget-object v0, p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCmcCallTime:Ljava/lang/String;

    if-eqz v0, :cond_12

    return v1

    .line 352
    :cond_11
    iget-object v2, p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCmcCallTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    return v1

    .line 356
    :cond_12
    iget-object p0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallExtras:Landroid/os/Bundle;

    iget-object p1, p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallExtras:Landroid/os/Bundle;

    invoke-static {p0, p1}, Lcom/sec/ims/cmc/CmcCallEventInfo;->areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public getCallExtraBool(Ljava/lang/String;Z)Z
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallExtras:Landroid/os/Bundle;

    if-nez p0, :cond_0

    return p2

    .line 197
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getCallExtraInt(Ljava/lang/String;I)I
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallExtras:Landroid/os/Bundle;

    if-nez p0, :cond_0

    return p2

    .line 183
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getCallExtraOem()Landroid/os/Bundle;
    .locals 1

    .line 206
    iget-object p0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallExtras:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 209
    :cond_0
    const-string v0, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getCallExtraString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallExtras:Landroid/os/Bundle;

    if-nez p0, :cond_0

    return-object p2

    .line 169
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCallExtras()Landroid/os/Bundle;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public getCallId()I
    .locals 0

    .line 48
    iget p0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallId:I

    return p0
.end method

.method public getCallRadioTech()I
    .locals 0

    .line 70
    iget p0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallRadioTech:I

    return p0
.end method

.method public getCmcCallTime()Ljava/lang/String;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCmcCallTime:Ljava/lang/String;

    return-object p0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCnapName:Ljava/lang/String;

    return-object p0
.end method

.method public getCnapNamePresentation()I
    .locals 0

    .line 98
    iget p0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCnapNamePresentation:I

    return p0
.end method

.method public getDialogId()Ljava/lang/String;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mDialogId:Ljava/lang/String;

    return-object p0
.end method

.method public getDirection()I
    .locals 0

    .line 62
    iget p0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mDirection:I

    return p0
.end method

.method public getDisconnectCause()I
    .locals 0

    .line 142
    iget p0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mDisconnectCause:I

    return p0
.end method

.method public getErrorCode()I
    .locals 0

    .line 127
    iget p0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mErrorCode:I

    return p0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mErrorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getExternalCallSlotAtPd()I
    .locals 0

    .line 105
    iget p0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mExternalCallSlotAtPd:I

    return p0
.end method

.method public getIsPulledCall()Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mIsPulledCall:Z

    return p0
.end method

.method public getNumberPresentation()I
    .locals 0

    .line 84
    iget p0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mNumberPresentation:I

    return p0
.end method

.method public getPeerUri()Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mPeerUri:Ljava/lang/String;

    return-object p0
.end method

.method public getPulledDialogId()Ljava/lang/String;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mPulledDialogId:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CmcCallEventInfo [mCallId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPeerUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mPeerUri:Ljava/lang/String;

    .line 383
    invoke-static {v1}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    iget v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mDirection:I

    if-nez v1, :cond_0

    const-string v1, "MO"

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "MT"

    goto :goto_0

    :cond_1
    const-string v1, "UNKNOWN"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallRadioTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallRadioTech:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsPulledCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mIsPulledCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mNumberPresentation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mNumberPresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCnapName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCnapName:Ljava/lang/String;

    .line 388
    invoke-static {v1}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCnapNamePresentation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCnapNamePresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mExternalCallSlotAtPd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mExternalCallSlotAtPd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPulledDialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mPulledDialogId:Ljava/lang/String;

    .line 391
    invoke-static {v1}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mDialogId:Ljava/lang/String;

    .line 392
    invoke-static {v1}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mErrorMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDisconnectCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mDisconnectCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCmcCallTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCmcCallTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 222
    :cond_0
    iget p2, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget-object p2, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mPeerUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget p2, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mDirection:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    iget p2, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallRadioTech:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget-boolean p2, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mIsPulledCall:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    iget p2, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mNumberPresentation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    iget-object p2, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCnapName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget p2, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCnapNamePresentation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget p2, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mExternalCallSlotAtPd:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget-object p2, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mPulledDialogId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object p2, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mDialogId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget p2, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mErrorCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget-object p2, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget p2, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mDisconnectCause:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget-object p2, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCmcCallTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    iget-object p0, p0, Lcom/sec/ims/cmc/CmcCallEventInfo;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
