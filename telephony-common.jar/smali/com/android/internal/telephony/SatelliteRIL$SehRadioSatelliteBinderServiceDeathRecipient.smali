.class final Lcom/android/internal/telephony/SatelliteRIL$SehRadioSatelliteBinderServiceDeathRecipient;
.super Ljava/lang/Object;
.source "SatelliteRIL.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SatelliteRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SehRadioSatelliteBinderServiceDeathRecipient"
.end annotation


# instance fields
.field private blacklist mBinder:Landroid/os/IBinder;

.field private blacklist mLinkedFlags:J

.field private final blacklist mService:I

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SatelliteRIL;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SatelliteRIL;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteRIL$SehRadioSatelliteBinderServiceDeathRecipient;->this$0:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput p2, p0, Lcom/android/internal/telephony/SatelliteRIL$SehRadioSatelliteBinderServiceDeathRecipient;->mService:I

    const-wide/16 p1, 0x0

    .line 141
    iput-wide p1, p0, Lcom/android/internal/telephony/SatelliteRIL$SehRadioSatelliteBinderServiceDeathRecipient;->mLinkedFlags:J

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteRIL$SehRadioSatelliteBinderServiceDeathRecipient;->this$0:Lcom/android/internal/telephony/SatelliteRIL;

    const-string v1, "Service SATELLITE SERVICE has died."

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteRIL$SehRadioSatelliteBinderServiceDeathRecipient;->this$0:Lcom/android/internal/telephony/SatelliteRIL;

    iget-object v0, v0, Lcom/android/internal/telephony/SatelliteRIL;->mRilHandler:Lcom/android/internal/telephony/SatelliteRIL$SatelliteRilHandler;

    iget v1, p0, Lcom/android/internal/telephony/SatelliteRIL$SehRadioSatelliteBinderServiceDeathRecipient;->mService:I

    iget-wide v2, p0, Lcom/android/internal/telephony/SatelliteRIL$SehRadioSatelliteBinderServiceDeathRecipient;->mLinkedFlags:J

    .line 164
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    .line 163
    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 165
    invoke-virtual {p0}, Lcom/android/internal/telephony/SatelliteRIL$SehRadioSatelliteBinderServiceDeathRecipient;->unlinkToDeath()V

    return-void
.end method

.method public blacklist linkToDeath(Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 146
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteRIL$SehRadioSatelliteBinderServiceDeathRecipient;->mBinder:Landroid/os/IBinder;

    .line 147
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteRIL$SehRadioSatelliteBinderServiceDeathRecipient;->this$0:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-static {p1}, Lcom/android/internal/telephony/SatelliteRIL;->-$$Nest$fgetmSehRadioSatelliteProxyCookie(Lcom/android/internal/telephony/SatelliteRIL;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/SatelliteRIL$SehRadioSatelliteBinderServiceDeathRecipient;->mLinkedFlags:J

    .line 148
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteRIL$SehRadioSatelliteBinderServiceDeathRecipient;->mBinder:Landroid/os/IBinder;

    long-to-int v0, v0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    :cond_0
    return-void
.end method

.method public declared-synchronized blacklist unlinkToDeath()V
    .locals 3

    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteRIL$SehRadioSatelliteBinderServiceDeathRecipient;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 154
    iget-wide v1, p0, Lcom/android/internal/telephony/SatelliteRIL$SehRadioSatelliteBinderServiceDeathRecipient;->mLinkedFlags:J

    long-to-int v1, v1

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcom/android/internal/telephony/SatelliteRIL$SehRadioSatelliteBinderServiceDeathRecipient;->mBinder:Landroid/os/IBinder;

    const-wide/16 v0, 0x0

    .line 156
    iput-wide v0, p0, Lcom/android/internal/telephony/SatelliteRIL$SehRadioSatelliteBinderServiceDeathRecipient;->mLinkedFlags:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 158
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
