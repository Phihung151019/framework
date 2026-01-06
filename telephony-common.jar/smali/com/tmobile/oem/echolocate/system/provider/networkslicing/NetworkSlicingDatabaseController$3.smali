.class Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkSlicingDatabaseController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 373
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAvailable(Landroid/net/Network;)V
    .locals 0

    .line 376
    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.intent.action.EcholocateSliceConfigChanged"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    const-string p1, "PRIORITIZE_BANDWIDTH"

    invoke-static {p1}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->-$$Nest$sfputmTypeNWSlicingConnection(Ljava/lang/String;)V

    .line 378
    invoke-static {}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->-$$Nest$sfgetsContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public whitelist onLost(Landroid/net/Network;)V
    .locals 0

    .line 383
    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.intent.action.EcholocateSliceConfigChanged"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 384
    const-string p1, "LOST"

    invoke-static {p1}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->-$$Nest$sfputmTypeNWSlicingConnection(Ljava/lang/String;)V

    .line 385
    invoke-static {}, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingDatabaseController;->-$$Nest$sfgetsContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
