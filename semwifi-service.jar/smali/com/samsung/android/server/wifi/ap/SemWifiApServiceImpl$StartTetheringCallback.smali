.class Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$StartTetheringCallback;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/net/TetheringManager$StartTetheringCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartTetheringCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$StartTetheringCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$StartTetheringCallback;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    return-void
.end method


# virtual methods
.method public onTetheringFailed(I)V
    .locals 2

    .line 1
    const-string v0, "onTetheringFailed(), error:"

    .line 2
    .line 3
    const-string v1, "SemWifiApServiceImpl"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$StartTetheringCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetisAutohotspotEnablingMHS(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$StartTetheringCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 17
    .line 18
    const/16 v0, 0xb

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setAutohotspotToastMessage(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$StartTetheringCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingLiteSupported()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$StartTetheringCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$StartTetheringCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isWifiSharingEnabled(Landroid/content/Context;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$StartTetheringCallback;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setIndoorChannelsToDriver(Z)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method

.method public onTetheringStarted()V
    .locals 1

    .line 1
    const-string p0, "SemWifiApServiceImpl"

    .line 2
    .line 3
    const-string v0, "onTetheringStarted()"

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method
