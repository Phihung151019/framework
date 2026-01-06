.class Lcom/android/internal/telephony/RilMonitor$2;
.super Ljava/lang/Object;
.source "RilMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/RilMonitor;->dumpLog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/RilMonitor;

.field final synthetic blacklist val$cause:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/RilMonitor;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 277
    iput-object p1, p0, Lcom/android/internal/telephony/RilMonitor$2;->this$0:Lcom/android/internal/telephony/RilMonitor;

    iput-object p2, p0, Lcom/android/internal/telephony/RilMonitor$2;->val$cause:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/RilMonitor$2;->this$0:Lcom/android/internal/telephony/RilMonitor;

    const-string v1, "run dumpstate"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/RilMonitor;->-$$Nest$mlog(Lcom/android/internal/telephony/RilMonitor;Ljava/lang/String;)V

    .line 282
    invoke-static {}, Lcom/android/internal/telephony/RilMonitor;->-$$Nest$sfgetmSyncCmd()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 283
    :try_start_0
    const-string v1, "/data/log"

    .line 284
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 286
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_0

    .line 287
    iget-object p0, p0, Lcom/android/internal/telephony/RilMonitor$2;->this$0:Lcom/android/internal/telephony/RilMonitor;

    const-string v1, "failed to create directory"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/RilMonitor;->-$$Nest$mloge(Lcom/android/internal/telephony/RilMonitor;Ljava/lang/String;)V

    .line 288
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 292
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/dumpstate_rilmonitor"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/RilMonitor$2;->this$0:Lcom/android/internal/telephony/RilMonitor;

    invoke-static {v1}, Lcom/android/internal/telephony/RilMonitor;->-$$Nest$fgetmPhoneId(Lcom/android/internal/telephony/RilMonitor;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/RilMonitor$2;->this$0:Lcom/android/internal/telephony/RilMonitor;

    invoke-static {v1}, Lcom/android/internal/telephony/RilMonitor;->-$$Nest$fgetmPhoneId(Lcom/android/internal/telephony/RilMonitor;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    iget-object v1, p0, Lcom/android/internal/telephony/RilMonitor$2;->val$cause:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/RilMonitor$2;->val$cause:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, ""

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".log"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 294
    iget-object p0, p0, Lcom/android/internal/telephony/RilMonitor$2;->this$0:Lcom/android/internal/telephony/RilMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bugreport > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/RilMonitor;->-$$Nest$mdoShellCmd(Lcom/android/internal/telephony/RilMonitor;Ljava/lang/String;)Ljava/lang/String;

    const/16 p0, 0x1a4

    const/4 v2, -0x1

    .line 295
    invoke-static {v1, p0, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 296
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
