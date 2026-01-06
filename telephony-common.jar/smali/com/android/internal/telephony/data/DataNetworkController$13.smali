.class Lcom/android/internal/telephony/data/DataNetworkController$13;
.super Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;
.source "DataNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/DataNetworkController;->setupDataNetwork(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataNetworkController;

.field final synthetic blacklist val$dataSetupRetryEntry:Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;


# direct methods
.method public static synthetic blacklist $r8$lambda$UsF-Q6z0GiV7ZZzCjActeCFRAG4(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;Ljava/util/List;)V
    .locals 0

    .line 4063
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;->onQosSessionsChanged(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zw3_GqO2nnMuCWfAAUDzrfigVRg(Ljava/util/List;Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V
    .locals 1

    .line 4062
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$13$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/DataNetworkController$13$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/util/concurrent/Executor;Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 3966
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$13;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataNetworkController$13;->val$dataSetupRetryEntry:Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onAttachFailed(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V
    .locals 0

    .line 3992
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$13;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$monAttachNetworkRequestsFailed(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V

    return-void
.end method

.method public blacklist onConnected(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 2

    .line 3983
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController$13;->val$dataSetupRetryEntry:Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 3984
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    .line 3986
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$13;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$monDataNetworkConnected(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method public blacklist onDisconnected(Lcom/android/internal/telephony/data/DataNetwork;II)V
    .locals 0

    .line 4013
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$13;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$monDataNetworkDisconnected(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;II)V

    return-void
.end method

.method public blacklist onHandoverFailed(Lcom/android/internal/telephony/data/DataNetwork;IJI)V
    .locals 0

    .line 4026
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$13;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$monDataNetworkHandoverFailed(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;IJI)V

    return-void
.end method

.method public blacklist onHandoverSucceeded(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 0

    .line 4019
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$13;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$monDataNetworkHandoverSucceeded(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method public blacklist onLinkStatusChanged(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .locals 0

    .line 4033
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$13;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$monLinkStatusChanged(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;I)V

    return-void
.end method

.method public blacklist onNetworkCapabilitiesChanged(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 0

    .line 4043
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$13;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$monNetworkCapabilitiesChanged(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method public blacklist onPcoDataChanged(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 0

    .line 4038
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$13;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$monPcoDataChanged(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method public blacklist onQosSessionsChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;)V"
        }
    .end annotation

    .line 4061
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$13;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$fgetmDataNetworkControllerCallbacks(Lcom/android/internal/telephony/data/DataNetworkController;)Ljava/util/Set;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$13$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$13$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist onRetryUnsatisfiedNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V
    .locals 0

    .line 4054
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$13;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$monRetryUnsatisfiedNetworkRequest(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    return-void
.end method

.method public blacklist onSetupDataFailed(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V
    .locals 2

    .line 3971
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController$13;->val$dataSetupRetryEntry:Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    if-eqz v0, :cond_0

    .line 3973
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 3975
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController$13;->val$dataSetupRetryEntry:Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    .line 3977
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$13;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$monDataNetworkSetupFailed(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V

    return-void
.end method

.method public blacklist onSuspendedStateChanged(Lcom/android/internal/telephony/data/DataNetwork;Z)V
    .locals 0

    .line 4006
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$13;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$monDataNetworkSuspendedStateChanged(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;Z)V

    return-void
.end method

.method public blacklist onTrackNetworkUnwanted(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 0

    .line 4048
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$13;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$monTrackNetworkUnwanted(Lcom/android/internal/telephony/data/DataNetworkController;)V

    return-void
.end method

.method public blacklist onValidationStatusChanged(Lcom/android/internal/telephony/data/DataNetwork;ILandroid/net/Uri;)V
    .locals 0

    .line 3999
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$13;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$monDataNetworkValidationStatusChanged(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;ILandroid/net/Uri;)V

    return-void
.end method
