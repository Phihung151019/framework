.class Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;
.super Landroid/os/Handler;
.source "ImsResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResolverHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ims/ImsResolver;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/ims/ImsResolver;Landroid/os/Looper;)V
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

    .line 533
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    .line 534
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 539
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "ImsResolver"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 556
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 557
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/os/UserHandle;

    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$mmaybeRemovedImsServiceForUser(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/lang/String;Landroid/os/UserHandle;)Z

    return-void

    .line 635
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/UserHandle;

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserSwitched="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$mmaybeAddedImsService(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/lang/String;)V

    return-void

    .line 631
    :pswitch_2
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$mclearCarrierServiceOverrides(Lcom/android/internal/telephony/ims/ImsResolver;I)V

    return-void

    .line 626
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 627
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$mhandleMsimConfigChange(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/lang/Integer;)V

    return-void

    .line 561
    :pswitch_4
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fgetmBootCompletedHandlerRan(Lcom/android/internal/telephony/ims/ImsResolver;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 562
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fputmBootCompletedHandlerRan(Lcom/android/internal/telephony/ims/ImsResolver;Z)V

    .line 563
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fgetmEventLog(Lcom/android/internal/telephony/ims/ImsResolver;)Lcom/android/internal/telephony/LocalLog;

    move-result-object p1

    const-string v0, "handling BOOT_COMPLETE"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 564
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fgetmCarrierConfigReceived(Lcom/android/internal/telephony/ims/ImsResolver;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 565
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fgetmEventLog(Lcom/android/internal/telephony/ims/ImsResolver;)Lcom/android/internal/telephony/LocalLog;

    move-result-object p1

    const-string v0, "boot complete - reeval"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 568
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$mmaybeAddedImsService(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/lang/String;)V

    return-void

    .line 570
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fgetmEventLog(Lcom/android/internal/telephony/ims/ImsResolver;)Lcom/android/internal/telephony/LocalLog;

    move-result-object p1

    const-string v0, "boot complete - update cache"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 573
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$mupdateInstalledServicesCache(Lcom/android/internal/telephony/ims/ImsResolver;)V

    .line 575
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fgetmIsWiFiOnlyModel(Lcom/android/internal/telephony/ims/ImsResolver;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 576
    const-string p1, "BOOT_COMPLETE stop retry for WiFi only model!"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$mremoveEventForWiFiOnlyModel(Lcom/android/internal/telephony/ims/ImsResolver;)V

    :cond_1
    :goto_0
    return-void

    .line 612
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/ims/ImsResolver$OverrideConfig;

    .line 613
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    iget-object v1, p1, Lcom/android/internal/telephony/ims/ImsResolver$OverrideConfig;->packageName:Ljava/lang/String;

    iget v2, p1, Lcom/android/internal/telephony/ims/ImsResolver$OverrideConfig;->userId:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$msetPackageNameUserOverride(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/lang/String;I)V

    .line 614
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 615
    iget-object v1, p1, Lcom/android/internal/telephony/ims/ImsResolver$OverrideConfig;->featureTypes:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget v4, v1, v3

    .line 616
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p1, Lcom/android/internal/telephony/ims/ImsResolver$OverrideConfig;->packageName:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 618
    :cond_2
    iget-boolean v1, p1, Lcom/android/internal/telephony/ims/ImsResolver$OverrideConfig;->isCarrierService:Z

    if-eqz v1, :cond_3

    .line 619
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    iget p1, p1, Lcom/android/internal/telephony/ims/ImsResolver$OverrideConfig;->slotId:I

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$moverrideCarrierService(Lcom/android/internal/telephony/ims/ImsResolver;ILjava/util/Map;)V

    return-void

    .line 621
    :cond_3
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$moverrideDeviceService(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/util/Map;)V

    return-void

    .line 603
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/SomeArgs;

    .line 604
    iget-object v0, p1, Lcom/android/internal/telephony/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    .line 605
    iget-object v1, p1, Lcom/android/internal/telephony/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    .line 607
    invoke-virtual {p1}, Lcom/android/internal/telephony/SomeArgs;->recycle()V

    .line 608
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$mdynamicQueryComplete(Lcom/android/internal/telephony/ims/ImsResolver;Landroid/content/ComponentName;Ljava/util/Set;)V

    return-void

    .line 598
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    .line 599
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$mstartDynamicQuery(Lcom/android/internal/telephony/ims/ImsResolver;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    return-void

    .line 585
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 586
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 589
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fgetmNumSlots(Lcom/android/internal/telephony/ims/ImsResolver;)I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 590
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "HANDLER_CONFIG_CHANGED for invalid slotid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 593
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fputmCarrierConfigReceived(Lcom/android/internal/telephony/ims/ImsResolver;Z)V

    .line 594
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$mcarrierConfigChanged(Lcom/android/internal/telephony/ims/ImsResolver;II)V

    return-void

    .line 551
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 552
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$mmaybeRemovedImsService(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/lang/String;)Z

    return-void

    .line 541
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 543
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fgetmIsWiFiOnlyModel(Lcom/android/internal/telephony/ims/ImsResolver;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 544
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$maddImsServiceForWiFiOnlyModel(Lcom/android/internal/telephony/ims/ImsResolver;)V

    return-void

    .line 547
    :cond_5
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$mmaybeAddedImsService(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
