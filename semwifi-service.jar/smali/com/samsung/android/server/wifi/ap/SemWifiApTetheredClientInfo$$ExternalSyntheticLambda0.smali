.class public final synthetic Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStateListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onWifiApStateChanged(IIILjava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 4
    .line 5
    move v2, p1

    .line 6
    move v3, p2

    .line 7
    move v4, p3

    .line 8
    move-object v5, p4

    .line 9
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->$r8$lambda$I0F26CEpUN4w0hDn9CQpLh9K0Uw(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;Landroid/content/Context;IIILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
