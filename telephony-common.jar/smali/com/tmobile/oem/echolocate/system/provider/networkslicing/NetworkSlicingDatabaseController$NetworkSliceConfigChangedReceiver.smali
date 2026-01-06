.class Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController$NetworkSliceConfigChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkSlicingDatabaseController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkSliceConfigChangedReceiver"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 389
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController$NetworkSliceConfigChangedReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 392
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 393
    const-string p0, "android.intent.action.EcholocateSliceConfigChanged"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 394
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "mTypeNWSlicingConnection = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->-$$Nest$sfgetmTypeNWSlicingConnection()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "onReceive() : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 395
    invoke-static {}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->-$$Nest$smgetNetworkSlicingData()V

    :cond_0
    return-void
.end method
