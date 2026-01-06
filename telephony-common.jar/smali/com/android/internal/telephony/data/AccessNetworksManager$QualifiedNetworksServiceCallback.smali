.class final Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;
.super Landroid/telephony/data/IQualifiedNetworksServiceCallback$Stub;
.source "AccessNetworksManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/AccessNetworksManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QualifiedNetworksServiceCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$3oOeFJOhLW4XClg9T3SjuZtKGg0(Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;Lcom/android/internal/telephony/IIntegerConsumer;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->lambda$onNetworkValidationRequested$3(Lcom/android/internal/telephony/IIntegerConsumer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$8wlxVN0nUoUvfqxiukEAdsIbFe8(IZLcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;)V
    .locals 1

    .line 296
    new-instance v0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;IZ)V

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$CiWl-j0LlVRi0JvJrjVjc4ib62o(Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;IZ)V
    .locals 0

    .line 298
    invoke-static {p1}, Lcom/android/internal/telephony/data/DataUtils;->apnTypeToNetworkCapability(I)I

    move-result p1

    .line 297
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;->onPreferredTransportChanged(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_Nr8PqOEokXAXom7HMUsgwJZaMw(I)Z
    .locals 0

    .line 258
    invoke-static {p0}, Lcom/android/internal/telephony/data/DataUtils;->isValidAccessNetwork(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private constructor blacklist <init>(Lcom/android/internal/telephony/data/AccessNetworksManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-direct {p0}, Landroid/telephony/data/IQualifiedNetworksServiceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/AccessNetworksManager;Lcom/android/internal/telephony/data/AccessNetworksManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;-><init>(Lcom/android/internal/telephony/data/AccessNetworksManager;)V

    return-void
.end method

.method private blacklist handleQualifiedNetworksChanged(I[IZ)V
    .locals 9

    .line 257
    invoke-static {p2}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid access networks "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$mloge(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;)V

    .line 260
    iget-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmDataConfigManager(Lcom/android/internal/telephony/data/AccessNetworksManager;)Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmDataConfigManager(Lcom/android/internal/telephony/data/AccessNetworksManager;)Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object p1

    .line 261
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->isInvalidQnsParamAnomalyReportEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 262
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    const-string p1, "QNS requested invalid Network Type"

    const-string p2, "3e89a3df-3524-45fa-b5f2-0fb0e4c77ec4"

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$mreportAnomaly(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 268
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    sget-object v1, Lcom/android/internal/telephony/data/AccessNetworksManager;->SUPPORTED_APN_TYPES:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_5

    aget v5, v1, v3

    and-int v6, p1, v5

    if-ne v6, v5, :cond_4

    .line 273
    iget-object v6, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {v6}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmDataConfigManager(Lcom/android/internal/telephony/data/AccessNetworksManager;)Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object v6

    if-eqz v6, :cond_1

    or-int/2addr v4, v5

    .line 277
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {v6}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmAvailableNetworks(Lcom/android/internal/telephony/data/AccessNetworksManager;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 278
    iget-object v6, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {v6}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmAvailableNetworks(Lcom/android/internal/telephony/data/AccessNetworksManager;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    invoke-static {v6, p2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 280
    iget-object v6, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Available networks for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-static {v5}, Landroid/telephony/data/ApnSetting;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not changed."

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 280
    invoke-static {v6, v5}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$mlog(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;)V

    goto :goto_1

    .line 289
    :cond_2
    array-length v6, p2

    if-nez v6, :cond_3

    .line 290
    iget-object v6, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {v6}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmAvailableNetworks(Lcom/android/internal/telephony/data/AccessNetworksManager;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 291
    iget-object v6, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransport(I)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 293
    iget-object v6, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {v6}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmPreferredTransports(Lcom/android/internal/telephony/data/AccessNetworksManager;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    .line 294
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 293
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v6, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {v6}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmAccessNetworksManagerCallbacks(Lcom/android/internal/telephony/data/AccessNetworksManager;)Ljava/util/Set;

    move-result-object v6

    new-instance v7, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback$$ExternalSyntheticLambda2;

    invoke-direct {v7, v5, p3}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback$$ExternalSyntheticLambda2;-><init>(IZ)V

    invoke-interface {v6, v7}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_1

    .line 302
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {v6}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmAvailableNetworks(Lcom/android/internal/telephony/data/AccessNetworksManager;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v5, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 303
    new-instance v6, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;

    invoke-direct {v6, v5, p2}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;-><init>(I[I)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    if-eq v4, p1, :cond_6

    .line 311
    iget-object p2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {p2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmDataConfigManager(Lcom/android/internal/telephony/data/AccessNetworksManager;)Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {p2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmDataConfigManager(Lcom/android/internal/telephony/data/AccessNetworksManager;)Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object p2

    .line 313
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataConfigManager;->isInvalidQnsParamAnomalyReportEnabled()Z

    move-result p2

    if-eqz p2, :cond_6

    xor-int/2addr p1, v4

    .line 315
    iget-object p2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QNS requested unsupported APN Types:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "3e89a3df-3524-45fa-b5f2-0fb0e4c77ec5"

    .line 315
    invoke-static {p2, p1, v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$mreportAnomaly(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 321
    iget-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {p1, v0, p3}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$msetPreferredTransports(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/util/List;Z)V

    .line 322
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {p0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmQualifiedNetworksChangedRegistrants(Lcom/android/internal/telephony/data/AccessNetworksManager;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method private synthetic blacklist lambda$onNetworkValidationRequested$3(Lcom/android/internal/telephony/IIntegerConsumer;Ljava/lang/Integer;)V
    .locals 3

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNetworkValidationRequestDone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/data/DataServiceCallback;->resultCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$mlog(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/internal/telephony/IIntegerConsumer;->accept(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 347
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onNetworkValidationRequestDone RemoteException"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$mloge(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist onHandoverEnabledChanged(I)V
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHandoverEnabledChanged supportedApnTypes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "mIsHandoverEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {v2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmIsHandoverEnabled(Lcom/android/internal/telephony/data/AccessNetworksManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$mloge(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmIsHandoverEnabled(Lcom/android/internal/telephony/data/AccessNetworksManager;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fputmIsHandoverEnabled(Lcom/android/internal/telephony/data/AccessNetworksManager;I)V

    .line 366
    iget-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmHandoverEnabledChangedRegistrants(Lcom/android/internal/telephony/data/AccessNetworksManager;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {p0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmIsHandoverEnabled(Lcom/android/internal/telephony/data/AccessNetworksManager;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public blacklist onNetworkValidationRequested(ILcom/android/internal/telephony/IIntegerConsumer;)V
    .locals 4

    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/AccessNetworksManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    .line 337
    iget-object v1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNetworkValidationRequested: networkCapability = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-static {p1}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 337
    invoke-static {v1, v2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$mlog(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;)V

    .line 340
    new-instance v1, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;Lcom/android/internal/telephony/IIntegerConsumer;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->requestNetworkValidation(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist onQualifiedNetworkTypesChanged(I[I)V
    .locals 4

    if-nez p2, :cond_0

    .line 242
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    const-string p1, "onQualifiedNetworkTypesChanged: Ignored null input."

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$mloge(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;)V

    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQualifiedNetworkTypesChanged: apnTypes = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], networks = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-static {p2}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks$$ExternalSyntheticLambda0;-><init>()V

    .line 249
    invoke-interface {v2, v3}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v2

    const-string v3, ","

    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$mlog(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 252
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->handleQualifiedNetworksChanged(I[IZ)V

    return-void
.end method

.method public blacklist onReconnectQualifiedNetworkType(II)V
    .locals 3

    .line 354
    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReconnectQualifiedNetworkType: apnTypes = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], networks = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-static {p2}, Landroid/telephony/AccessNetworkConstants$AccessNetworkType;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 354
    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$mlog(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;)V

    .line 358
    filled-new-array {p2}, [I

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;->handleQualifiedNetworksChanged(I[IZ)V

    return-void
.end method
