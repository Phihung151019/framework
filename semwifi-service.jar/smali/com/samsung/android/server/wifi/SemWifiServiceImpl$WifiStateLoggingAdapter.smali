.class Lcom/samsung/android/server/wifi/SemWifiServiceImpl$WifiStateLoggingAdapter;
.super Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$Adapter;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiStateLoggingAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$WifiStateLoggingAdapter;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$WifiStateLoggingAdapter;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V

    return-void
.end method


# virtual methods
.method public getFirstConnectionReport()[J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$WifiStateLoggingAdapter;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$fgetmClientModeManager(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getConnectionSpeed()[J

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
