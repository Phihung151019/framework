.class Lcom/android/internal/telephony/data/DataNetworkController$3;
.super Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;
.source "DataNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/DataNetworkController;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataNetworkController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/util/concurrent/Executor;)V
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

    .line 1357
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$3;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onDataAllowPopupEnabled()V
    .locals 2

    .line 1370
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$3;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    const/4 v0, 0x5

    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_ENABLED_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 1371
    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1370
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist onDataProfilesChanged()V
    .locals 3

    .line 1360
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController$3;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_PROFILES_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    const/16 v2, 0x10

    .line 1361
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1360
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1363
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$3;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    const/4 v0, 0x5

    .line 1364
    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1363
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
