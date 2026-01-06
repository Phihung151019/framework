.class Lcom/android/internal/telephony/data/AccessNetworksManager$1;
.super Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;
.source "AccessNetworksManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/AccessNetworksManager;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/util/concurrent/Executor;)V
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

    .line 462
    iput-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$1;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onThrottleStatusChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/ThrottleStatus;",
            ">;)V"
        }
    .end annotation

    .line 467
    const-string v0, "onThrottleStatusChanged: "

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$1;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$mlogl(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;)V

    .line 468
    iget-object v1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$1;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmIQualifiedNetworksService(Lcom/android/internal/telephony/data/AccessNetworksManager;)Landroid/telephony/data/IQualifiedNetworksService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 469
    iget-object v1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$1;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmIQualifiedNetworksService(Lcom/android/internal/telephony/data/AccessNetworksManager;)Landroid/telephony/data/IQualifiedNetworksService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$1;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {v2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/AccessNetworksManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 470
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    .line 469
    invoke-interface {v1, v2, p1}, Landroid/telephony/data/IQualifiedNetworksService;->reportThrottleStatusChanged(ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 473
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$1;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$mloge(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
