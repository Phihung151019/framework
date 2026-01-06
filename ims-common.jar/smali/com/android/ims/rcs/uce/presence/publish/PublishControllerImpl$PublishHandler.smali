.class Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;
.super Landroid/os/Handler;
.source "PublishControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PublishHandler"
.end annotation


# static fields
.field private static blacklist EVENT_DESCRIPTION:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MSG_CARRIER_CONFIG_CHANGED:I = 0x4

.field private static final blacklist MSG_DESTROYED:I = 0x3

.field private static final blacklist MSG_IMS_UNREGISTERED:I = 0x10

.field private static final blacklist MSG_NOTIFY_CURRENT_PUBLISH_STATE:I = 0x7

.field private static final blacklist MSG_PUBLISH_SENT:I = 0xe

.field private static final blacklist MSG_PUBLISH_STATE_CHANGED:I = 0x6

.field private static final blacklist MSG_PUBLISH_UPDATED:I = 0xf

.field private static final blacklist MSG_RCS_CAPABILITIES_CHANGED:I = 0x5

.field private static final blacklist MSG_RCS_CONNECTED:I = 0x1

.field private static final blacklist MSG_RCS_DISCONNECTED:I = 0x2

.field private static final blacklist MSG_REQUEST_CANCELED:I = 0xb

.field private static final blacklist MSG_REQUEST_CMD_ERROR:I = 0x9

.field private static final blacklist MSG_REQUEST_NETWORK_RESPONSE:I = 0xa

.field private static final blacklist MSG_REQUEST_PUBLISH:I = 0x8

.field private static final blacklist MSG_RESET_DEVICE_STATE:I = 0xc

.field private static final blacklist MSG_UNPUBLISHED:I = 0xd


# instance fields
.field private final blacklist mPublishControllerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 837
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    .line 839
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RCS_CONNECTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RCS_DISCONNECTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DESTROYED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CARRIER_CONFIG_CHANGED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RCS_CAPABILITIES_CHANGED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PUBLISH_STATE_CHANGED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "NOTIFY_PUBLISH_STATE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "REQUEST_PUBLISH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "REQUEST_CMD_ERROR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "REQUEST_NETWORK_RESPONSE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "REQUEST_CANCELED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RESET_DEVICE_STATE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MSG_UNPUBLISHED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MSG_PUBLISH_SENT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MSG_PUBLISH_UPDATED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MSG_IMS_UNREGISTERED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Landroid/os/Looper;)V
    .locals 1
    .param p1, "publishController"    # Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 485
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 486
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    .line 487
    return-void
.end method


# virtual methods
.method public blacklist clearRequestCanceledTimer()V
    .locals 2

    .line 798
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 799
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_0

    .line 800
    return-void

    .line 802
    :cond_0
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 803
    :cond_1
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->removeMessages(I)V

    .line 804
    return-void
.end method

.method public blacklist clearResetDeviceStateTimer()V
    .locals 2

    .line 820
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 821
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_0

    .line 822
    return-void

    .line 824
    :cond_0
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 825
    :cond_1
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->removeMessages(I)V

    .line 826
    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .line 491
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 492
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_0

    .line 493
    return-void

    .line 495
    :cond_0
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 496
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mlogd(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Ljava/lang/String;)V

    .line 497
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mlogd(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 586
    :pswitch_0
    nop

    .line 587
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    .line 586
    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandleUnpublishedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;ILjava/time/Instant;)V

    .line 588
    goto/16 :goto_0

    .line 580
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/ims/SipDetails;

    .line 581
    .local v1, "details":Landroid/telephony/ims/SipDetails;
    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandlePublishUpdatedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Landroid/telephony/ims/SipDetails;)V

    .line 582
    goto/16 :goto_0

    .line 576
    .end local v1    # "details":Landroid/telephony/ims/SipDetails;
    :pswitch_2
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandlePublishSentMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)V

    .line 577
    goto/16 :goto_0

    .line 567
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/ims/SomeArgs;

    .line 568
    .local v1, "args":Lcom/android/ims/SomeArgs;
    iget-object v2, v1, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 569
    .local v2, "newPublishState":I
    iget-object v3, v1, Lcom/android/ims/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/time/Instant;

    .line 570
    .local v3, "updatedTimestamp":Ljava/time/Instant;
    invoke-virtual {v1}, Lcom/android/ims/SomeArgs;->recycle()V

    .line 571
    invoke-static {v0, v2, v3}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandleUnpublishedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;ILjava/time/Instant;)V

    .line 572
    goto/16 :goto_0

    .line 563
    .end local v1    # "args":Lcom/android/ims/SomeArgs;
    .end local v2    # "newPublishState":I
    .end local v3    # "updatedTimestamp":Ljava/time/Instant;
    :pswitch_4
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandleResetDeviceStateMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)V

    .line 564
    goto/16 :goto_0

    .line 558
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 559
    .local v1, "taskId":J
    invoke-static {v0, v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandleRequestCanceledMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;J)V

    .line 560
    goto/16 :goto_0

    .line 553
    .end local v1    # "taskId":J
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    .line 554
    .local v1, "networkResponse":Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmPublishProcessor(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->onNetworkResponse(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    .line 555
    goto :goto_0

    .line 548
    .end local v1    # "networkResponse":Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    .line 549
    .local v1, "cmdErrorResponse":Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmPublishProcessor(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->onCommandError(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    .line 550
    goto :goto_0

    .line 543
    .end local v1    # "cmdErrorResponse":Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;
    :pswitch_8
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 544
    .local v1, "type":I
    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandleRequestPublishMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;I)V

    .line 545
    goto :goto_0

    .line 534
    .end local v1    # "type":I
    :pswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;

    .line 535
    .local v1, "c":Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;
    const/4 v2, 0x0

    .line 536
    .local v2, "supportPublishingState":Z
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 537
    const/4 v2, 0x1

    .line 539
    :cond_2
    invoke-static {v0, v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandleNotifyCurrentPublishStateMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;Z)V

    .line 540
    goto :goto_0

    .line 523
    .end local v1    # "c":Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;
    .end local v2    # "supportPublishingState":Z
    :pswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/ims/SomeArgs;

    .line 524
    .local v1, "args":Lcom/android/ims/SomeArgs;
    iget-object v2, v1, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 525
    .local v2, "newPublishState":I
    iget-object v3, v1, Lcom/android/ims/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/time/Instant;

    .line 526
    .restart local v3    # "updatedTimestamp":Ljava/time/Instant;
    iget-object v4, v1, Lcom/android/ims/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 527
    .local v4, "pidfXml":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/ims/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v5, Landroid/telephony/ims/SipDetails;

    .line 528
    .local v5, "details":Landroid/telephony/ims/SipDetails;
    invoke-virtual {v1}, Lcom/android/ims/SomeArgs;->recycle()V

    .line 529
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandlePublishStateChangedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;ILjava/time/Instant;Ljava/lang/String;Landroid/telephony/ims/SipDetails;)V

    .line 531
    goto :goto_0

    .line 518
    .end local v1    # "args":Lcom/android/ims/SomeArgs;
    .end local v2    # "newPublishState":I
    .end local v3    # "updatedTimestamp":Ljava/time/Instant;
    .end local v4    # "pidfXml":Ljava/lang/String;
    .end local v5    # "details":Landroid/telephony/ims/SipDetails;
    :pswitch_b
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 519
    .local v1, "RcsCapabilities":I
    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandleRcsCapabilitiesChangedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;I)V

    .line 520
    goto :goto_0

    .line 514
    .end local v1    # "RcsCapabilities":I
    :pswitch_c
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandleCarrierConfigChangedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)V

    .line 515
    goto :goto_0

    .line 510
    :pswitch_d
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandleDestroyedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)V

    .line 511
    goto :goto_0

    .line 506
    :pswitch_e
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandleRcsDisconnectedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)V

    .line 507
    goto :goto_0

    .line 499
    :pswitch_f
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/ims/SomeArgs;

    .line 500
    .local v1, "args":Lcom/android/ims/SomeArgs;
    iget-object v2, v1, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/ims/RcsFeatureManager;

    .line 501
    .local v2, "manager":Lcom/android/ims/RcsFeatureManager;
    invoke-virtual {v1}, Lcom/android/ims/SomeArgs;->recycle()V

    .line 502
    invoke-static {v0, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandleRcsConnectedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Lcom/android/ims/RcsFeatureManager;)V

    .line 503
    nop

    .line 594
    .end local v1    # "args":Lcom/android/ims/SomeArgs;
    .end local v2    # "manager":Lcom/android/ims/RcsFeatureManager;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage done: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mlogd(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Ljava/lang/String;)V

    .line 595
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

.method public blacklist onDestroy()V
    .locals 1

    .line 601
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 602
    return-void
.end method

.method public blacklist sendCarrierConfigChangedMsg()V
    .locals 3

    .line 638
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 639
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_0

    return-void

    .line 640
    :cond_0
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 642
    :cond_1
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 643
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 644
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 645
    return-void
.end method

.method public blacklist sendDestroyedMsg()V
    .locals 3

    .line 628
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 629
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_0

    return-void

    .line 630
    :cond_0
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 632
    :cond_1
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 633
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 634
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 635
    return-void
.end method

.method public blacklist sendImsUnregisteredMessage()V
    .locals 3

    .line 829
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 830
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_0

    return-void

    .line 831
    :cond_0
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 832
    :cond_1
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 833
    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0x10

    iput v2, v1, Landroid/os/Message;->what:I

    .line 834
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 835
    return-void
.end method

.method public blacklist sendNotifyCurrentPublishStateMessage(Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;Z)V
    .locals 3
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;
    .param p2, "supportPublishingState"    # Z

    .line 714
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 715
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_0

    return-void

    .line 716
    :cond_0
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 718
    :cond_1
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 719
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x7

    iput v2, v1, Landroid/os/Message;->what:I

    .line 720
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 721
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 722
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 723
    return-void
.end method

.method public blacklist sendPublishMessage(I)V
    .locals 2
    .param p1, "type"    # I

    .line 738
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendPublishMessage(IJ)V

    .line 739
    return-void
.end method

.method public blacklist sendPublishMessage(IJ)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "delay"    # J

    .line 742
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 743
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_0

    return-void

    .line 744
    :cond_0
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 748
    :cond_1
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$misPresencePublishEnabled(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    .line 749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendPublishMessage: disallowed type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mlogd(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Ljava/lang/String;)V

    .line 750
    return-void

    .line 753
    :cond_2
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 754
    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0x8

    iput v2, v1, Landroid/os/Message;->what:I

    .line 755
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 756
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 757
    return-void
.end method

.method public blacklist sendPublishSentMessage()V
    .locals 3

    .line 729
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 730
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_0

    return-void

    .line 731
    :cond_0
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 732
    :cond_1
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 733
    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0xe

    iput v2, v1, Landroid/os/Message;->what:I

    .line 734
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 735
    return-void
.end method

.method public blacklist sendPublishStateChangedMessage(ILjava/time/Instant;Ljava/lang/String;Landroid/telephony/ims/SipDetails;)V
    .locals 4
    .param p1, "publishState"    # I
    .param p2, "updatedTimestamp"    # Ljava/time/Instant;
    .param p3, "pidfXml"    # Ljava/lang/String;
    .param p4, "details"    # Landroid/telephony/ims/SipDetails;

    .line 663
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 664
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_0

    return-void

    .line 665
    :cond_0
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 667
    :cond_1
    invoke-static {}, Lcom/android/ims/SomeArgs;->obtain()Lcom/android/ims/SomeArgs;

    move-result-object v1

    .line 668
    .local v1, "args":Lcom/android/ims/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    .line 669
    iput-object p2, v1, Lcom/android/ims/SomeArgs;->arg2:Ljava/lang/Object;

    .line 670
    iput-object p3, v1, Lcom/android/ims/SomeArgs;->arg3:Ljava/lang/Object;

    .line 671
    iput-object p4, v1, Lcom/android/ims/SomeArgs;->arg4:Ljava/lang/Object;

    .line 672
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 673
    .local v2, "message":Landroid/os/Message;
    const/4 v3, 0x6

    iput v3, v2, Landroid/os/Message;->what:I

    .line 674
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 675
    invoke-virtual {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 676
    return-void
.end method

.method public blacklist sendPublishUpdatedMessage(Landroid/telephony/ims/SipDetails;)V
    .locals 3
    .param p1, "details"    # Landroid/telephony/ims/SipDetails;

    .line 699
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 700
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_0

    return-void

    .line 701
    :cond_0
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 703
    :cond_1
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 704
    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0xf

    iput v2, v1, Landroid/os/Message;->what:I

    .line 705
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 706
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 707
    return-void
.end method

.method public blacklist sendRcsCapabilitiesStatusChangedMsg(I)V
    .locals 3
    .param p1, "capabilities"    # I

    .line 648
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 649
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_0

    return-void

    .line 650
    :cond_0
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 652
    :cond_1
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 653
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 654
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 655
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 656
    return-void
.end method

.method public blacklist sendRcsConnectedMsg(Lcom/android/ims/RcsFeatureManager;)V
    .locals 4
    .param p1, "manager"    # Lcom/android/ims/RcsFeatureManager;

    .line 605
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 606
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_0

    return-void

    .line 607
    :cond_0
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 609
    :cond_1
    invoke-static {}, Lcom/android/ims/SomeArgs;->obtain()Lcom/android/ims/SomeArgs;

    move-result-object v1

    .line 610
    .local v1, "args":Lcom/android/ims/SomeArgs;
    iput-object p1, v1, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    .line 611
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 612
    .local v2, "message":Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 613
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 614
    invoke-virtual {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 615
    return-void
.end method

.method public blacklist sendRcsDisconnectedMsg()V
    .locals 3

    .line 618
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 619
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_0

    return-void

    .line 620
    :cond_0
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 622
    :cond_1
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 623
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 624
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 625
    return-void
.end method

.method public blacklist sendRequestCanceledTimerMessage(JJ)V
    .locals 3
    .param p1, "taskId"    # J
    .param p3, "delay"    # J

    .line 784
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 785
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_0

    .line 786
    return-void

    .line 788
    :cond_0
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 789
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {p0, v2, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->removeMessages(ILjava/lang/Object;)V

    .line 791
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 792
    .local v1, "message":Landroid/os/Message;
    iput v2, v1, Landroid/os/Message;->what:I

    .line 793
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 794
    invoke-virtual {p0, v1, p3, p4}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 795
    return-void
.end method

.method public blacklist sendRequestCommandErrorMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    .line 760
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 761
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_0

    .line 762
    return-void

    .line 764
    :cond_0
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 765
    :cond_1
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 766
    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0x9

    iput v2, v1, Landroid/os/Message;->what:I

    .line 767
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 768
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 769
    return-void
.end method

.method public blacklist sendRequestNetworkRespMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    .line 772
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 773
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_0

    .line 774
    return-void

    .line 776
    :cond_0
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 777
    :cond_1
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 778
    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0xa

    iput v2, v1, Landroid/os/Message;->what:I

    .line 779
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 780
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 781
    return-void
.end method

.method public blacklist sendResetDeviceStateTimerMessage(J)V
    .locals 5
    .param p1, "resetAfterSec"    # J

    .line 807
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 808
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_0

    .line 809
    return-void

    .line 811
    :cond_0
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 813
    :cond_1
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->removeMessages(I)V

    .line 814
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 815
    .local v2, "message":Landroid/os/Message;
    iput v1, v2, Landroid/os/Message;->what:I

    .line 816
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 817
    return-void
.end method

.method public blacklist sendUnpublishedMessage(I)V
    .locals 4
    .param p1, "publishState"    # I

    .line 682
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 683
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_0

    return-void

    .line 684
    :cond_0
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 686
    :cond_1
    invoke-static {}, Lcom/android/ims/SomeArgs;->obtain()Lcom/android/ims/SomeArgs;

    move-result-object v1

    .line 687
    .local v1, "args":Lcom/android/ims/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    .line 688
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    iput-object v2, v1, Lcom/android/ims/SomeArgs;->arg2:Ljava/lang/Object;

    .line 689
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 690
    .local v2, "message":Landroid/os/Message;
    const/16 v3, 0xd

    iput v3, v2, Landroid/os/Message;->what:I

    .line 691
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 692
    invoke-virtual {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 693
    return-void
.end method
