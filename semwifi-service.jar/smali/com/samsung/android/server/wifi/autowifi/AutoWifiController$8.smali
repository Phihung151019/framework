.class Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$8;
.super Landroid/database/ContentObserver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->registerObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$8;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$8;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$mgetAutoWifiUserType(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$8;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmAutoWifiUserType(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eq v0, p1, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$8;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 16
    .line 17
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fputmAutoWifiUserType(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
