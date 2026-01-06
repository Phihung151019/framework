.class public Lcom/samsung/android/server/wifi/halclient/SemStateChangeResult;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field public BSSID:Ljava/lang/String;

.field public networkId:I

.field public state:Landroid/net/wifi/SupplicantState;

.field public wifiSsid:Lcom/samsung/android/wifi/SemWifiSsid;


# direct methods
.method public constructor <init>(ILcom/samsung/android/wifi/SemWifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/samsung/android/server/wifi/halclient/SemStateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemStateChangeResult;->wifiSsid:Lcom/samsung/android/wifi/SemWifiSsid;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemStateChangeResult;->BSSID:Ljava/lang/String;

    .line 9
    .line 10
    iput p1, p0, Lcom/samsung/android/server/wifi/halclient/SemStateChangeResult;->networkId:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, " SSID: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemStateChangeResult;->wifiSsid:Lcom/samsung/android/wifi/SemWifiSsid;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiSsid;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    .line 16
    .line 17
    const-string v1, " BSSID: "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemStateChangeResult;->BSSID:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    .line 26
    .line 27
    const-string v1, " nid: "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    .line 31
    .line 32
    iget v1, p0, Lcom/samsung/android/server/wifi/halclient/SemStateChangeResult;->networkId:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 35
    .line 36
    .line 37
    const-string v1, " state: "

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemStateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 43
    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0
.end method
