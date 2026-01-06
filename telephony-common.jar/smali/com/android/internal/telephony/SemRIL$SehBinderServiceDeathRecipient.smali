.class final Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;
.super Ljava/lang/Object;
.source "SemRIL.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SehBinderServiceDeathRecipient"
.end annotation


# instance fields
.field private blacklist mBinder:Landroid/os/IBinder;

.field private blacklist mLinkedFlags:J

.field private final blacklist mService:I

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemRIL;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SemRIL;I)V
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

    .line 345
    iput-object p1, p0, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->this$0:Lcom/android/internal/telephony/SemRIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput p2, p0, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->mService:I

    const-wide/16 p1, 0x0

    .line 347
    iput-wide p1, p0, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->mLinkedFlags:J

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 5

    .line 369
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->this$0:Lcom/android/internal/telephony/SemRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->mService:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->-$$Nest$smserviceToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has died."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->this$0:Lcom/android/internal/telephony/SemRIL;

    iget-object v0, v0, Lcom/android/internal/telephony/SemRIL;->mRilHandler:Lcom/android/internal/telephony/SemRIL$SemRilHandler;

    iget v1, p0, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->mService:I

    iget-wide v2, p0, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->mLinkedFlags:J

    .line 371
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x7

    const/4 v4, 0x0

    .line 370
    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 372
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->unlinkToDeath()V

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

    .line 352
    iput-object p1, p0, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->mBinder:Landroid/os/IBinder;

    .line 353
    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->this$0:Lcom/android/internal/telephony/SemRIL;

    invoke-static {p1}, Lcom/android/internal/telephony/SemRIL;->-$$Nest$fgetmServiceCookies(Lcom/android/internal/telephony/SemRIL;)Landroid/util/SparseArray;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->mService:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->mLinkedFlags:J

    .line 354
    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->mBinder:Landroid/os/IBinder;

    long-to-int v0, v0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 355
    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->this$0:Lcom/android/internal/telephony/SemRIL;

    invoke-static {p1}, Lcom/android/internal/telephony/SemRIL;->-$$Nest$fgetmLinkedServices(Lcom/android/internal/telephony/SemRIL;)Landroid/util/SparseArray;

    move-result-object p1

    iget p0, p0, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->mService:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized blacklist unlinkToDeath()V
    .locals 3

    monitor-enter p0

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 361
    iget-wide v1, p0, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->mLinkedFlags:J

    long-to-int v1, v1

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    .line 362
    iput-object v0, p0, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->mBinder:Landroid/os/IBinder;

    const-wide/16 v0, 0x0

    .line 363
    iput-wide v0, p0, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;->mLinkedFlags:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 365
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
