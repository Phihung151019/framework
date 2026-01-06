.class public final synthetic Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkAddedListener;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Landroid/net/wifi/WifiConfiguration;

    .line 13
    .line 14
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->$r8$lambda$uxouuXeibwBP-SB7_gTi8w8kWkg(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkAddedListener;Landroid/net/wifi/WifiConfiguration;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Landroid/net/wifi/WifiConfiguration;

    .line 25
    .line 26
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->$r8$lambda$zAVV--CrtS661UN-IMYDL_JWhX8(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;Landroid/net/wifi/WifiConfiguration;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p0, Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->$r8$lambda$RNlLtwItuPAdCqY46mZfloaXM-s(Lcom/samsung/android/server/wifi/SemWifiConfigManager;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p0, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 49
    .line 50
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->$r8$lambda$QSqWwNKOgN1uv2vdR8AZ2AjhEj4(Lcom/samsung/android/server/wifi/SemWifiConfigManager;Lcom/samsung/android/wifi/SemWifiConfiguration;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
