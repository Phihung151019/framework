.class public Lcom/sec/ims/CmcMediaRecorder;
.super Ljava/lang/Object;
.source "CmcMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/CmcMediaRecorder$OnInfoListener;,
        Lcom/sec/ims/CmcMediaRecorder$OnErrorListener;
    }
.end annotation


# static fields
.field public static final CMC_RECORDER_ERROR_UNKNOWN:I = 0x1

.field public static final CMC_RECORDER_INFO_DURATION_IN_PROGRESS:I = 0x385

.field public static final CMC_RECORDER_INFO_FILESIZE_IN_PROGRESS:I = 0x384

.field public static final CMC_RECORDER_INFO_MAX_DURATION_REACHED:I = 0x320

.field public static final CMC_RECORDER_INFO_MAX_FILESIZE_REACHED:I = 0x321

.field public static final CMC_RECORDER_SUCCESS:I = 0x0

.field private static final EVENT_PAUSE:I = 0x4

.field private static final EVENT_PREPARE:I = 0x1

.field private static final EVENT_RELEASE:I = 0x7

.field private static final EVENT_RESET:I = 0x6

.field private static final EVENT_RESUME:I = 0x5

.field private static final EVENT_START:I = 0x2

.field private static final EVENT_STOP:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "CmcMediaRecorder"

.field private static final STATE_DATASOURCE_CONFIGURED:I = 0x3

.field private static final STATE_ERROR:I = 0x7

.field private static final STATE_INITIAL:I = 0x1

.field private static final STATE_INITIALIZED:I = 0x2

.field private static final STATE_PREPARED:I = 0x4

.field private static final STATE_RECORDING:I = 0x5

.field private static final STATE_RELEASED:I = 0x6

.field private static final STATE_UNKNOWN:I = 0x8


# instance fields
.field private mCmcRecordingInfo:Lcom/sec/ims/cmc/CmcRecordingInfo;

.field mImsService:Lcom/sec/ims/IImsService;

.field private mOnErrorListener:Lcom/sec/ims/CmcMediaRecorder$OnErrorListener;

.field private mOnInfoListener:Lcom/sec/ims/CmcMediaRecorder$OnInfoListener;

.field private mPhoneId:I

.field private mState:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmOnErrorListener(Lcom/sec/ims/CmcMediaRecorder;)Lcom/sec/ims/CmcMediaRecorder$OnErrorListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/ims/CmcMediaRecorder;->mOnErrorListener:Lcom/sec/ims/CmcMediaRecorder$OnErrorListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnInfoListener(Lcom/sec/ims/CmcMediaRecorder;)Lcom/sec/ims/CmcMediaRecorder$OnInfoListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/ims/CmcMediaRecorder;->mOnInfoListener:Lcom/sec/ims/CmcMediaRecorder$OnInfoListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmState(Lcom/sec/ims/CmcMediaRecorder;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/ims/CmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/sec/ims/cmc/CmcRecordingInfo;

    invoke-direct {v0}, Lcom/sec/ims/cmc/CmcRecordingInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/CmcMediaRecorder;->mCmcRecordingInfo:Lcom/sec/ims/cmc/CmcRecordingInfo;

    return-void
.end method

.method constructor <init>(Lcom/sec/ims/IImsService;I)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/sec/ims/cmc/CmcRecordingInfo;

    invoke-direct {v0}, Lcom/sec/ims/cmc/CmcRecordingInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/CmcMediaRecorder;->mCmcRecordingInfo:Lcom/sec/ims/cmc/CmcRecordingInfo;

    .line 80
    iput-object p1, p0, Lcom/sec/ims/CmcMediaRecorder;->mImsService:Lcom/sec/ims/IImsService;

    .line 81
    iput p2, p0, Lcom/sec/ims/CmcMediaRecorder;->mPhoneId:I

    .line 84
    :try_start_0
    new-instance v0, Lcom/sec/ims/CmcMediaRecorder$1;

    invoke-direct {v0, p0}, Lcom/sec/ims/CmcMediaRecorder$1;-><init>(Lcom/sec/ims/CmcMediaRecorder;)V

    invoke-interface {p1, p2, v0}, Lcom/sec/ims/IImsService;->registerCmcRecordingListener(ILcom/sec/ims/cmc/ICmcRecordingListener;)V

    const/4 p1, 0x1

    .line 102
    iput p1, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 104
    sget-object p1, Lcom/sec/ims/CmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method getCmcRecordingInfo()Lcom/sec/ims/cmc/CmcRecordingInfo;
    .locals 0

    .line 656
    iget-object p0, p0, Lcom/sec/ims/CmcMediaRecorder;->mCmcRecordingInfo:Lcom/sec/ims/cmc/CmcRecordingInfo;

    return-object p0
.end method

.method public pause()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 196
    sget-object v0, Lcom/sec/ims/CmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget v0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/sec/ims/CmcMediaRecorder;->mImsService:Lcom/sec/ims/IImsService;

    iget v1, p0, Lcom/sec/ims/CmcMediaRecorder;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/ims/CmcMediaRecorder;->mCmcRecordingInfo:Lcom/sec/ims/cmc/CmcRecordingInfo;

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/ims/IImsService;->sendCmcRecordingEvent(IILcom/sec/ims/cmc/CmcRecordingInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 205
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prepare()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 117
    sget-object v0, Lcom/sec/ims/CmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "prepare"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget v0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/sec/ims/CmcMediaRecorder;->mImsService:Lcom/sec/ims/IImsService;

    iget v1, p0, Lcom/sec/ims/CmcMediaRecorder;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/ims/CmcMediaRecorder;->mCmcRecordingInfo:Lcom/sec/ims/cmc/CmcRecordingInfo;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3, v2}, Lcom/sec/ims/IImsService;->sendCmcRecordingEvent(IILcom/sec/ims/cmc/CmcRecordingInfo;)V

    const/4 v0, 0x4

    .line 126
    iput v0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current stats is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 271
    sget-object v0, Lcom/sec/ims/CmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget v0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/sec/ims/CmcMediaRecorder;->mImsService:Lcom/sec/ims/IImsService;

    iget v1, p0, Lcom/sec/ims/CmcMediaRecorder;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/ims/CmcMediaRecorder;->mCmcRecordingInfo:Lcom/sec/ims/cmc/CmcRecordingInfo;

    const/4 v3, 0x7

    invoke-interface {v0, v1, v3, v2}, Lcom/sec/ims/IImsService;->sendCmcRecordingEvent(IILcom/sec/ims/cmc/CmcRecordingInfo;)V

    const/4 v0, 0x6

    .line 280
    iput v0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 282
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 237
    sget-object v0, Lcom/sec/ims/CmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget v0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/sec/ims/CmcMediaRecorder;->mImsService:Lcom/sec/ims/IImsService;

    iget v2, p0, Lcom/sec/ims/CmcMediaRecorder;->mPhoneId:I

    iget-object v3, p0, Lcom/sec/ims/CmcMediaRecorder;->mCmcRecordingInfo:Lcom/sec/ims/cmc/CmcRecordingInfo;

    invoke-interface {v0, v2, v1, v3}, Lcom/sec/ims/IImsService;->sendCmcRecordingEvent(IILcom/sec/ims/cmc/CmcRecordingInfo;)V

    const/4 v0, 0x1

    .line 246
    iput v0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 248
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resume()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 218
    sget-object v0, Lcom/sec/ims/CmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "resume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget v0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/sec/ims/CmcMediaRecorder;->mImsService:Lcom/sec/ims/IImsService;

    iget v2, p0, Lcom/sec/ims/CmcMediaRecorder;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/ims/CmcMediaRecorder;->mCmcRecordingInfo:Lcom/sec/ims/cmc/CmcRecordingInfo;

    invoke-interface {v0, v2, v1, p0}, Lcom/sec/ims/IImsService;->sendCmcRecordingEvent(IILcom/sec/ims/cmc/CmcRecordingInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 227
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAudioChannels(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 452
    sget-object v0, Lcom/sec/ims/CmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setAudioChannels"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget v0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    if-lez p1, :cond_0

    .line 461
    iget-object p0, p0, Lcom/sec/ims/CmcMediaRecorder;->mCmcRecordingInfo:Lcom/sec/ims/cmc/CmcRecordingInfo;

    invoke-virtual {p0, p1}, Lcom/sec/ims/cmc/CmcRecordingInfo;->setAudioChannels(I)V

    return-void

    .line 459
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of channels is not positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 455
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAudioEncoder(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 503
    sget-object v0, Lcom/sec/ims/CmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setAudioEncoder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget v0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 509
    iget-object p0, p0, Lcom/sec/ims/CmcMediaRecorder;->mCmcRecordingInfo:Lcom/sec/ims/cmc/CmcRecordingInfo;

    invoke-virtual {p0, p1}, Lcom/sec/ims/cmc/CmcRecordingInfo;->setAudioEncoder(I)V

    return-void

    .line 506
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAudioEncodingBitRate(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 428
    sget-object v0, Lcom/sec/ims/CmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setAudioEncodingBitRate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget v0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    if-lez p1, :cond_0

    .line 437
    iget-object p0, p0, Lcom/sec/ims/CmcMediaRecorder;->mCmcRecordingInfo:Lcom/sec/ims/cmc/CmcRecordingInfo;

    invoke-virtual {p0, p1}, Lcom/sec/ims/cmc/CmcRecordingInfo;->setAudioEncodingBitRate(I)V

    return-void

    .line 435
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Audio encoding bit rate is not positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 431
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAudioSamplingRate(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 480
    sget-object v0, Lcom/sec/ims/CmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setAudioSamplingRate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget v0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    if-lez p1, :cond_0

    .line 489
    iget-object p0, p0, Lcom/sec/ims/CmcMediaRecorder;->mCmcRecordingInfo:Lcom/sec/ims/cmc/CmcRecordingInfo;

    invoke-virtual {p0, p1}, Lcom/sec/ims/cmc/CmcRecordingInfo;->setAudioSamplingRate(I)V

    return-void

    .line 487
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Audio sampling rate is not positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 483
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAudioSource(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 297
    sget-object v0, Lcom/sec/ims/CmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setAudioSource"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget v0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 303
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/ims/CmcMediaRecorder;->mCmcRecordingInfo:Lcom/sec/ims/cmc/CmcRecordingInfo;

    invoke-virtual {v0, p1}, Lcom/sec/ims/cmc/CmcRecordingInfo;->setAudioSource(I)V

    .line 305
    iput v2, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    return-void
.end method

.method public setAuthor(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 584
    iget v0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 588
    iget-object p0, p0, Lcom/sec/ims/CmcMediaRecorder;->mCmcRecordingInfo:Lcom/sec/ims/cmc/CmcRecordingInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "param-meta-author="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/ims/cmc/CmcRecordingInfo;->setAuthor(Ljava/lang/String;)V

    return-void

    .line 585
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDurationInterval(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 521
    sget-object v0, Lcom/sec/ims/CmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setDurationInterval"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget v0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    if-lez p1, :cond_0

    .line 531
    iget-object p0, p0, Lcom/sec/ims/CmcMediaRecorder;->mCmcRecordingInfo:Lcom/sec/ims/cmc/CmcRecordingInfo;

    invoke-virtual {p0, p1}, Lcom/sec/ims/cmc/CmcRecordingInfo;->setDurationInterval(I)V

    return-void

    .line 528
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Duration interval is not positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 524
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFileSizeInterval(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 543
    sget-object v0, Lcom/sec/ims/CmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setFileSizeInterval"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget v0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 553
    iget-object p0, p0, Lcom/sec/ims/CmcMediaRecorder;->mCmcRecordingInfo:Lcom/sec/ims/cmc/CmcRecordingInfo;

    invoke-virtual {p0, p1, p2}, Lcom/sec/ims/cmc/CmcRecordingInfo;->setFileSizeInterval(J)V

    return-void

    .line 550
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File size interval is not positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 546
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Current state is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxDuration(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 379
    sget-object v0, Lcom/sec/ims/CmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setMaxDuration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget v0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    if-lez p1, :cond_0

    .line 389
    iget-object p0, p0, Lcom/sec/ims/CmcMediaRecorder;->mCmcRecordingInfo:Lcom/sec/ims/cmc/CmcRecordingInfo;

    invoke-virtual {p0, p1}, Lcom/sec/ims/cmc/CmcRecordingInfo;->setMaxDuration(I)V

    return-void

    .line 386
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Max duration is not positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 382
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxFileSize(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 350
    sget-object v0, Lcom/sec/ims/CmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setMaxFileSize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget v0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 360
    iget-object p0, p0, Lcom/sec/ims/CmcMediaRecorder;->mCmcRecordingInfo:Lcom/sec/ims/cmc/CmcRecordingInfo;

    invoke-virtual {p0, p1, p2}, Lcom/sec/ims/cmc/CmcRecordingInfo;->setMaxFileSize(J)V

    return-void

    .line 357
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Max file size is not positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 353
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Current state is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnErrorListener(Lcom/sec/ims/CmcMediaRecorder$OnErrorListener;)V
    .locals 2

    .line 649
    sget-object v0, Lcom/sec/ims/CmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setOnErrorListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iput-object p1, p0, Lcom/sec/ims/CmcMediaRecorder;->mOnErrorListener:Lcom/sec/ims/CmcMediaRecorder$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lcom/sec/ims/CmcMediaRecorder$OnInfoListener;)V
    .locals 2

    .line 618
    sget-object v0, Lcom/sec/ims/CmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setOnInfoListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iput-object p1, p0, Lcom/sec/ims/CmcMediaRecorder;->mOnInfoListener:Lcom/sec/ims/CmcMediaRecorder$OnInfoListener;

    return-void
.end method

.method public setOutputFormat(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 323
    sget-object v0, Lcom/sec/ims/CmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setOutputFormat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget v0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/sec/ims/CmcMediaRecorder;->mCmcRecordingInfo:Lcom/sec/ims/cmc/CmcRecordingInfo;

    invoke-virtual {v0, p1}, Lcom/sec/ims/cmc/CmcRecordingInfo;->setOutputFormat(I)V

    const/4 p1, 0x3

    .line 331
    iput p1, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    return-void

    .line 326
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOutputPath(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 402
    sget-object v0, Lcom/sec/ims/CmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setOutputPath"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget v0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 408
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object p0, p0, Lcom/sec/ims/CmcMediaRecorder;->mCmcRecordingInfo:Lcom/sec/ims/cmc/CmcRecordingInfo;

    invoke-virtual {p0, p1}, Lcom/sec/ims/cmc/CmcRecordingInfo;->setOutputPath(Ljava/lang/String;)V

    return-void

    .line 409
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Output absolute path is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 405
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 140
    sget-object v0, Lcom/sec/ims/CmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget v0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/sec/ims/CmcMediaRecorder;->mImsService:Lcom/sec/ims/IImsService;

    iget v1, p0, Lcom/sec/ims/CmcMediaRecorder;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/ims/CmcMediaRecorder;->mCmcRecordingInfo:Lcom/sec/ims/cmc/CmcRecordingInfo;

    const/4 v3, 0x2

    invoke-interface {v0, v1, v3, v2}, Lcom/sec/ims/IImsService;->sendCmcRecordingEvent(IILcom/sec/ims/cmc/CmcRecordingInfo;)V

    const/4 v0, 0x5

    .line 149
    iput v0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 168
    sget-object v0, Lcom/sec/ims/CmcMediaRecorder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget v0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/sec/ims/CmcMediaRecorder;->mImsService:Lcom/sec/ims/IImsService;

    iget v1, p0, Lcom/sec/ims/CmcMediaRecorder;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/ims/CmcMediaRecorder;->mCmcRecordingInfo:Lcom/sec/ims/cmc/CmcRecordingInfo;

    const/4 v3, 0x3

    invoke-interface {v0, v1, v3, v2}, Lcom/sec/ims/IImsService;->sendCmcRecordingEvent(IILcom/sec/ims/cmc/CmcRecordingInfo;)V

    const/4 v0, 0x1

    .line 177
    iput v0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 179
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/ims/CmcMediaRecorder;->mState:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
