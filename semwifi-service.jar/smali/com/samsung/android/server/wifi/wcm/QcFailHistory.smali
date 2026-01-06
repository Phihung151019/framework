.class public Lcom/samsung/android/server/wifi/wcm/QcFailHistory;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field public apIndex:I

.field public avoidance:Z

.field public bssid:Ljava/lang/String;

.field public bytes:I

.field public currentDnsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field public dataRate:I

.field public detection:Z

.field public error:I

.field public line:I

.field public netstat:Ljava/lang/String;

.field public qcStep:I

.field public qcStepTemp:I

.field public qcTrigger:I

.field public qcTriggerTemp:I

.field public qcType:I

.field public qcUrlIndex:I

.field public rssi:I

.field public ssid:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public time:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->state:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->qcType:I

    .line 10
    .line 11
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->qcStep:I

    .line 12
    .line 13
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->qcStepTemp:I

    .line 14
    .line 15
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->qcTrigger:I

    .line 16
    .line 17
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->qcTriggerTemp:I

    .line 18
    .line 19
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->qcUrlIndex:I

    .line 20
    .line 21
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->error:I

    .line 22
    .line 23
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->bytes:I

    .line 24
    .line 25
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->rssi:I

    .line 26
    .line 27
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->dataRate:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->detection:Z

    .line 31
    .line 32
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->avoidance:Z

    .line 33
    .line 34
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->apIndex:I

    .line 35
    .line 36
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->ssid:Ljava/lang/String;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->bssid:Ljava/lang/String;

    .line 39
    .line 40
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->line:I

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->currentDnsList:Ljava/util/List;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->netstat:Ljava/lang/String;

    .line 46
    .line 47
    return-void
.end method
