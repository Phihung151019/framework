.class Lcom/samsung/audio/SmpsManager$SMPSReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/audio/SmpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SMPSReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/audio/SmpsManager;


# direct methods
.method private constructor <init>(Lcom/samsung/audio/SmpsManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 636
    iput-object p1, p0, Lcom/samsung/audio/SmpsManager$SMPSReceiver;->this$0:Lcom/samsung/audio/SmpsManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/audio/SmpsManager;Lcom/samsung/audio/SmpsManager-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/audio/SmpsManager$SMPSReceiver;-><init>(Lcom/samsung/audio/SmpsManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 639
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 640
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 641
    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 642
    .local v1, "state":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 647
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/audio/SmpsManager$SMPSReceiver;->this$0:Lcom/samsung/audio/SmpsManager;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/samsung/audio/SmpsManager;->-$$Nest$msetOutType(Lcom/samsung/audio/SmpsManager;I)V

    .line 648
    goto :goto_0

    .line 644
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/audio/SmpsManager$SMPSReceiver;->this$0:Lcom/samsung/audio/SmpsManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/audio/SmpsManager;->-$$Nest$msetOutType(Lcom/samsung/audio/SmpsManager;I)V

    .line 645
    nop

    .line 652
    .end local v1    # "state":I
    :goto_0
    goto :goto_1

    :cond_0
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 653
    iget-object v1, p0, Lcom/samsung/audio/SmpsManager$SMPSReceiver;->this$0:Lcom/samsung/audio/SmpsManager;

    invoke-static {v1}, Lcom/samsung/audio/SmpsManager;->-$$Nest$misSmpsAvailable(Lcom/samsung/audio/SmpsManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 654
    iget-object v1, p0, Lcom/samsung/audio/SmpsManager$SMPSReceiver;->this$0:Lcom/samsung/audio/SmpsManager;

    invoke-static {v1}, Lcom/samsung/audio/SmpsManager;->-$$Nest$fgetmSmpsFT(Lcom/samsung/audio/SmpsManager;)Lcom/samsung/audio/Smps;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/audio/Smps;->stop_fasttrack()V

    goto :goto_1

    .line 656
    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 657
    iget-object v1, p0, Lcom/samsung/audio/SmpsManager$SMPSReceiver;->this$0:Lcom/samsung/audio/SmpsManager;

    invoke-static {v1}, Lcom/samsung/audio/SmpsManager;->-$$Nest$misSmpsAvailable(Lcom/samsung/audio/SmpsManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/audio/SmpsManager$SMPSReceiver;->this$0:Lcom/samsung/audio/SmpsManager;

    invoke-static {v1}, Lcom/samsung/audio/SmpsManager;->-$$Nest$fgetmEnableInSettingMenu(Lcom/samsung/audio/SmpsManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 658
    iget-object v1, p0, Lcom/samsung/audio/SmpsManager$SMPSReceiver;->this$0:Lcom/samsung/audio/SmpsManager;

    invoke-static {v1}, Lcom/samsung/audio/SmpsManager;->-$$Nest$fgetmSmpsFT(Lcom/samsung/audio/SmpsManager;)Lcom/samsung/audio/Smps;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/audio/Smps;->start_fasttrack()V

    .line 661
    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
