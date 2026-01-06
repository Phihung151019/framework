.class final Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;
.super Landroid/os/Handler;
.source "PhoneConfigurationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneConfigurationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConfigManagerHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/PhoneConfigurationManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 324
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/PhoneConfigurationManager;Lcom/android/internal/telephony/PhoneConfigurationManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;-><init>(Lcom/android/internal/telephony/PhoneConfigurationManager;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 329
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    const/4 v2, 0x5

    if-eq v0, v2, :cond_e

    const/16 v2, 0x64

    if-eq v0, v2, :cond_c

    packed-switch v0, :pswitch_data_0

    .line 432
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown event: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$smlog(Ljava/lang/String;)V

    return-void

    .line 391
    :pswitch_0
    const-string v0, "Received EVENT_SLOTS_SUPPORTING_SIMULTANEOUS_CALL_CHANGED/DONE"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getPhoneCount()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 393
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$fgetmSlotsSupportingSimultaneousCellularCalls(Lcom/android/internal/telephony/PhoneConfigurationManager;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 394
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$fgetmSlotsSupportingSimultaneousCellularCalls(Lcom/android/internal/telephony/PhoneConfigurationManager;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void

    .line 398
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    if-eqz v0, :cond_6

    .line 399
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_6

    .line 400
    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 401
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$fgetmSlotsSupportingSimultaneousCellularCalls(Lcom/android/internal/telephony/PhoneConfigurationManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$fgetmSlotsSupportingSimultaneousCellularCalls(Lcom/android/internal/telephony/PhoneConfigurationManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getPhoneCount()I

    move-result v0

    sub-int/2addr v0, v1

    .line 405
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_3

    if-le v3, v0, :cond_2

    goto :goto_1

    .line 411
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$fgetmSlotsSupportingSimultaneousCellularCalls(Lcom/android/internal/telephony/PhoneConfigurationManager;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 407
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid slot supporting DSDA ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". Disabling DSDA."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$smloge(Ljava/lang/String;)V

    .line 408
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$fgetmSlotsSupportingSimultaneousCellularCalls(Lcom/android/internal/telephony/PhoneConfigurationManager;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 414
    :cond_4
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$fgetmSlotsSupportingSimultaneousCellularCalls(Lcom/android/internal/telephony/PhoneConfigurationManager;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getPhoneCount()I

    move-result v0

    if-gt p1, v0, :cond_5

    iget-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$fgetmSlotsSupportingSimultaneousCellularCalls(Lcom/android/internal/telephony/PhoneConfigurationManager;)Ljava/util/Set;

    move-result-object p1

    .line 415
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-ge p1, v2, :cond_7

    .line 416
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid size of DSDA slots. Disabling cellular DSDA. Size of mSlotsSupportingSimultaneousCellularCalls="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$fgetmSlotsSupportingSimultaneousCellularCalls(Lcom/android/internal/telephony/PhoneConfigurationManager;)Ljava/util/Set;

    move-result-object v0

    .line 418
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 416
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$smloge(Ljava/lang/String;)V

    .line 419
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$fgetmSlotsSupportingSimultaneousCellularCalls(Lcom/android/internal/telephony/PhoneConfigurationManager;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto :goto_2

    .line 422
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " failure. Not getting logical slots that support simultaneous calling."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 424
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$fgetmSlotsSupportingSimultaneousCellularCalls(Lcom/android/internal/telephony/PhoneConfigurationManager;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 426
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$fgetmFeatureFlags(Lcom/android/internal/telephony/PhoneConfigurationManager;)Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 427
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$mupdateSimultaneousSubIdsFromPhoneIdMappingAndNotify(Lcom/android/internal/telephony/PhoneConfigurationManager;)V

    .line 428
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$mnotifySimultaneousCellularCallingSlotsChanged(Lcom/android/internal/telephony/PhoneConfigurationManager;)V

    return-void

    .line 378
    :pswitch_1
    const-string p1, "enable_virtual_dsda"

    const/4 v0, 0x0

    const-string v1, "telephony"

    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    .line 380
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$fgetmVirtualDsdaEnabled(Lcom/android/internal/telephony/PhoneConfigurationManager;)Z

    move-result v0

    if-eq p1, v0, :cond_8

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_DEVICE_CONFIG_CHANGED: from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$fgetmVirtualDsdaEnabled(Lcom/android/internal/telephony/PhoneConfigurationManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$fputmVirtualDsdaEnabled(Lcom/android/internal/telephony/PhoneConfigurationManager;Z)V

    .line 384
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/PhoneConfigurationManager$Listener;

    .line 385
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneConfigurationManager$Listener;->onDeviceConfigChanged()V

    goto :goto_3

    :cond_8
    return-void

    .line 365
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    if-eqz v0, :cond_a

    .line 366
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_a

    .line 367
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/PhoneCapability;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->setStaticPhoneCapability(Landroid/telephony/PhoneCapability;)V

    .line 368
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$mnotifyCapabilityChanged(Lcom/android/internal/telephony/PhoneConfigurationManager;)V

    .line 369
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    iget-object p1, p1, Lcom/android/internal/telephony/PhoneConfigurationManager;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneConfigurationManager$Listener;

    .line 370
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager$Listener;->onPhoneCapabilityChanged()V

    goto :goto_4

    .line 372
    :cond_9
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$mmaybeEnableCellularDSDASupport(Lcom/android/internal/telephony/PhoneConfigurationManager;)V

    return-void

    .line 374
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " failure. Not getting phone capability."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$smlog(Ljava/lang/String;)V

    return-void

    .line 354
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    if-eqz v0, :cond_b

    .line 355
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_b

    .line 356
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 357
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 359
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->addToPhoneStatusCache(IZ)V

    return-void

    .line 361
    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " failure. Not updating modem status."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$smlog(Ljava/lang/String;)V

    return-void

    .line 345
    :cond_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    if-eqz v0, :cond_d

    .line 346
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_d

    .line 347
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 348
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$monMultiSimConfigChanged(Lcom/android/internal/telephony/PhoneConfigurationManager;I)V

    return-void

    .line 350
    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " failure. Not switching multi-sim config."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$smlog(Ljava/lang/String;)V

    return-void

    .line 332
    :cond_e
    const-string v0, "Received EVENT_RADIO_AVAILABLE/EVENT_RADIO_ON"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 333
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 334
    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v0, :cond_f

    instance-of v1, v0, Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_f

    .line 335
    check-cast v0, Lcom/android/internal/telephony/Phone;

    .line 336
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$mupdatePhoneStatus(Lcom/android/internal/telephony/PhoneConfigurationManager;Lcom/android/internal/telephony/Phone;)V

    goto :goto_5

    .line 339
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to add phoneStatus to cache. No phone object provided for event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 342
    :goto_5
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->updateRadioCapability()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
