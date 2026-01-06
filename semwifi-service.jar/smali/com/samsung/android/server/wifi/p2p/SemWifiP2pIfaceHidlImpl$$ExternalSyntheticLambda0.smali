.class public final synthetic Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getNameCallback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl$GeneralUtil$Mutable;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl;Ljava/lang/String;Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl$GeneralUtil$Mutable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl$GeneralUtil$Mutable;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl$GeneralUtil$Mutable;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v1, p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl;->$r8$lambda$ndDSBRLybv28nKpJBUScw2eFDvE(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl;Ljava/lang/String;Lcom/samsung/android/server/wifi/p2p/SemWifiP2pIfaceHidlImpl$GeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
