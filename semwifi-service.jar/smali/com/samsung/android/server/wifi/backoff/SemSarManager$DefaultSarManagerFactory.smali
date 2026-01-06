.class Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/SemSarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultSarManagerFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method createSarManager(Ljava/lang/String;)Lcom/samsung/android/server/wifi/backoff/BaseSarManager;
    .locals 9

    .line 1
    const-string v0, "createSarManager "

    .line 2
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    const-string v1, "SemWifiBackOff.Sar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "Gta4XLSarManager"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "TripleBodySarManager"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "A076SarManager"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "JdmProximityHeadSarManager"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "A066SarManager"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "DoubleBodySarManager"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_6
    const-string v1, "ProximityHeadSarManager"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v1, "JdmReceiverHeadSarManager"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_8
    const-string v1, "JdmTripleBodySarManager"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_9
    const-string v1, "A03sSarManager"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_a
    const-string v1, "A16SarManager"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_b
    const-string v1, "JdmDoubleBodySarManager"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_c
    const-string v1, "ReceiverHeadSarManager"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 5
    :pswitch_0
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSemFrameworkFacade(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    move-result-object p0

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;)V

    return-object p1

    .line 6
    :pswitch_1
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSemFrameworkFacade(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    move-result-object p0

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/samsung/android/server/wifi/backoff/TripleBodySarManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;)V

    return-object p1

    .line 7
    :pswitch_2
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/A076SarManager;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSemFrameworkFacade(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    move-result-object p0

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/samsung/android/server/wifi/backoff/A076SarManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;)V

    return-object p1

    .line 8
    :pswitch_3
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSemFrameworkFacade(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    move-result-object p0

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;)V

    return-object p1

    .line 9
    :pswitch_4
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/A066SarManager;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSemFrameworkFacade(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    move-result-object p0

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/samsung/android/server/wifi/backoff/A066SarManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;)V

    return-object p1

    .line 10
    :pswitch_5
    new-instance v3, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;

    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSemFrameworkFacade(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v6

    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    move-result-object v7

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    iget-object v8, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SEPARATE_ANT_TYPE:Ljava/lang/String;

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;Ljava/lang/String;)V

    return-object v3

    .line 11
    :pswitch_6
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/ProximityHeadSarManager;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSemFrameworkFacade(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    move-result-object p0

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/samsung/android/server/wifi/backoff/ProximityHeadSarManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;)V

    return-object p1

    .line 12
    :pswitch_7
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/JdmReceiverHeadSarManager;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSemFrameworkFacade(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    move-result-object p0

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/samsung/android/server/wifi/backoff/JdmReceiverHeadSarManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;)V

    return-object p1

    .line 13
    :pswitch_8
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSemFrameworkFacade(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    move-result-object p0

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;)V

    return-object p1

    .line 14
    :pswitch_9
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSemFrameworkFacade(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    move-result-object p0

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;)V

    return-object p1

    .line 15
    :pswitch_a
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/A16SarManager;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSemFrameworkFacade(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    move-result-object p0

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/samsung/android/server/wifi/backoff/A16SarManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;)V

    return-object p1

    .line 16
    :pswitch_b
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSemFrameworkFacade(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    move-result-object p0

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;)V

    return-object p1

    .line 17
    :pswitch_c
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/ReceiverHeadSarManager;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSemFrameworkFacade(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    move-result-object p0

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/samsung/android/server/wifi/backoff/ReceiverHeadSarManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;)V

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7be1d6e8 -> :sswitch_c
        -0x5b20d471 -> :sswitch_b
        -0x56779e11 -> :sswitch_a
        -0x49f8f888 -> :sswitch_9
        -0x4590bea4 -> :sswitch_8
        -0x3e3184d5 -> :sswitch_7
        -0x208dc098 -> :sswitch_6
        0x492b70bc -> :sswitch_5
        0x529d5f98 -> :sswitch_4
        0x57cc2fb5 -> :sswitch_3
        0x5a4f04f7 -> :sswitch_2
        0x5ebb8689 -> :sswitch_1
        0x6082aefd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method createSarManager(Ljava/lang/String;II)Lcom/samsung/android/server/wifi/backoff/BaseSarManager;
    .locals 7

    .line 22
    const-string v0, "createSarManager "

    .line 23
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    const-string v1, "SemWifiBackOff.Sar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const-string v0, "SingleBodySarManager"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 26
    new-instance v0, Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;

    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmSemFrameworkFacade(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v3

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    move-result-object v4

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;II)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
