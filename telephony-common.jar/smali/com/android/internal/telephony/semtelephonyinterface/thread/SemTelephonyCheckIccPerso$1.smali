.class Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso$1;
.super Landroid/os/Handler;
.source "SemTelephonyCheckIccPerso.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 61
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 62
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq p1, v1, :cond_0

    return-void

    .line 64
    :cond_0
    const-string p1, "SemTelephonyCheckIccPerso"

    const-string v1, "SUPPLY_PERSO_COMPLETE"

    invoke-static {p1, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso;

    monitor-enter p1

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso;->-$$Nest$fputmResult(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso;Z)V

    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso;->-$$Nest$fputmDone(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso;Z)V

    .line 68
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 69
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
