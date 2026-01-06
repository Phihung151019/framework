.class Lcom/samsung/android/server/wifi/SemWifiBackupRestore$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiBackupRestore;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiBackupRestore;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiBackupRestore;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-string p1, "SemWifiBackupRestore"

    .line 2
    .line 3
    const-string v0, " restore is done"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const-string v0, "RESULT"

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-nez p2, :cond_1

    .line 16
    .line 17
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

    .line 18
    .line 19
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->-$$Nest$fgetmSemConfigs(Lcom/samsung/android/server/wifi/SemWifiBackupRestore;)Lorg/json/JSONArray;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

    .line 26
    .line 27
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->-$$Nest$fgetmSemConfigs(Lcom/samsung/android/server/wifi/SemWifiBackupRestore;)Lorg/json/JSONArray;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-lez p2, :cond_0

    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

    .line 38
    .line 39
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->-$$Nest$maddOrUpdateNetwork(Lcom/samsung/android/server/wifi/SemWifiBackupRestore;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    const-string p0, "SemConfigs is null, do not addOrUpdateNetwork"

    .line 44
    .line 45
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catch_0
    move-exception p0

    .line 50
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method
