.class Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController$1;
.super Ljava/lang/Object;
.source "NetworkSlicingDatabaseController.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/OutcomeReceiver<",
        "Landroid/telephony/data/NetworkSlicingConfig;",
        "Landroid/telephony/TelephonyManager$NetworkSlicingException;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(Landroid/telephony/TelephonyManager$NetworkSlicingException;)V
    .locals 1

    .line 343
    const-string p0, "-2"

    invoke-static {p0}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->-$$Nest$sfputsSST(Ljava/lang/String;)V

    .line 344
    invoke-static {p0}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->-$$Nest$sfputsSD(Ljava/lang/String;)V

    .line 345
    invoke-static {p0}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->-$$Nest$sfputsUrspRules(Ljava/lang/String;)V

    .line 346
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to get slicing config"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NetworkSlicingDatabaseController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic whitelist onError(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 280
    check-cast p1, Landroid/telephony/TelephonyManager$NetworkSlicingException;

    invoke-virtual {p0, p1}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController$1;->onError(Landroid/telephony/TelephonyManager$NetworkSlicingException;)V

    return-void
.end method

.method public blacklist onResult(Landroid/telephony/data/NetworkSlicingConfig;)V
    .locals 13

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResult:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkSlicingDatabaseController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const-string v0, ""

    invoke-static {v0}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->-$$Nest$sfputsUrspRules(Ljava/lang/String;)V

    .line 286
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p1, :cond_b

    .line 288
    invoke-virtual {p1}, Landroid/telephony/data/NetworkSlicingConfig;->getUrspRules()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->-$$Nest$sfputsUrspRules(Ljava/lang/String;)V

    .line 290
    sget-boolean v1, Lcom/android/internal/telephony/TelephonyFeatures;->IS_QCOM:Z

    const-string v2, "NONE"

    const-string v3, "-"

    const/4 v4, 0x0

    const-string v5, " "

    const/4 v6, 0x1

    if-nez v1, :cond_7

    const-string v7, "LOST"

    invoke-static {}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->-$$Nest$sfgetmTypeNWSlicingConnection()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 292
    invoke-virtual {p1}, Landroid/telephony/data/NetworkSlicingConfig;->getUrspRules()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v6

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/data/UrspRule;

    .line 294
    invoke-virtual {v7}, Landroid/telephony/data/UrspRule;->getTrafficDescriptors()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v4

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/data/TrafficDescriptor;

    .line 295
    new-instance v11, Landroid/telephony/data/TrafficDescriptor$OsAppId;

    invoke-virtual {v10}, Landroid/telephony/data/TrafficDescriptor;->getOsAppId()[B

    move-result-object v10

    invoke-direct {v11, v10}, Landroid/telephony/data/TrafficDescriptor$OsAppId;-><init>([B)V

    .line 296
    invoke-static {}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->-$$Nest$sfgetmTypeNWSlicingConnection()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getAppId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v9, v6

    goto :goto_0

    .line 300
    :cond_2
    invoke-virtual {v7}, Landroid/telephony/data/UrspRule;->getRouteSelectionDescriptor()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/data/RouteSelectionDescriptor;

    if-nez v9, :cond_4

    goto :goto_1

    .line 304
    :cond_4
    invoke-virtual {v8}, Landroid/telephony/data/RouteSelectionDescriptor;->getSliceInfo()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/data/NetworkSliceInfo;

    .line 305
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/telephony/data/NetworkSliceInfo;->getSliceServiceType()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->-$$Nest$sfputsSST(Ljava/lang/String;)V

    .line 306
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/telephony/data/NetworkSliceInfo;->getSliceDifferentiator()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->-$$Nest$sfputsSD(Ljava/lang/String;)V

    .line 307
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->-$$Nest$sfgetsSST()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->-$$Nest$sfgetsSD()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 308
    invoke-interface {v0, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 309
    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-static {}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->-$$Nest$sfgetsSST()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->-$$Nest$sfgetsSD()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->-$$Nest$smgetValuesForDB(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    goto :goto_2

    .line 316
    :cond_6
    invoke-static {v2}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->-$$Nest$sfputmTypeNWSlicingConnection(Ljava/lang/String;)V

    move v6, v1

    goto/16 :goto_4

    :cond_7
    if-eqz v1, :cond_9

    .line 318
    invoke-virtual {p1}, Landroid/telephony/data/NetworkSlicingConfig;->getSliceInfo()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/NetworkSliceInfo;

    .line 319
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/telephony/data/NetworkSliceInfo;->getSliceServiceType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->-$$Nest$sfputsSST(Ljava/lang/String;)V

    .line 320
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/telephony/data/NetworkSliceInfo;->getSliceDifferentiator()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->-$$Nest$sfputsSD(Ljava/lang/String;)V

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->-$$Nest$sfgetsSST()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->-$$Nest$sfgetsSD()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 323
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 324
    invoke-static {}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->-$$Nest$sfgetsSST()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->-$$Nest$sfgetsSD()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->-$$Nest$smgetValuesForDB(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v4

    goto :goto_3

    :cond_9
    :goto_4
    if-eqz v6, :cond_a

    .line 329
    invoke-static {}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->-$$Nest$sfgetmTypeNWSlicingConnection()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 330
    const-string p1, "0"

    invoke-static {p1, p1}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->-$$Nest$smgetValuesForDB(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_a
    invoke-static {}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->-$$Nest$sfgetsHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController$1$1;

    invoke-direct {v0, p0}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController$1$1;-><init>(Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_b
    return-void
.end method

.method public bridge synthetic whitelist onResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 280
    check-cast p1, Landroid/telephony/data/NetworkSlicingConfig;

    invoke-virtual {p0, p1}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController$1;->onResult(Landroid/telephony/data/NetworkSlicingConfig;)V

    return-void
.end method
