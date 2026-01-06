.class Lcom/android/internal/telephony/SemSimErrorMonitor$1;
.super Landroid/os/Handler;
.source "SemSimErrorMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemSimErrorMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SemSimErrorMonitor;Landroid/os/Looper;)V
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

    .line 86
    iput-object p1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$1;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    .line 94
    iget-object p0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$1;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$mlog(Lcom/android/internal/telephony/SemSimErrorMonitor;Ljava/lang/String;)V

    return-void

    .line 91
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$1;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$mhandleCardSwapped(Lcom/android/internal/telephony/SemSimErrorMonitor;Landroid/os/Message;)V

    return-void
.end method
