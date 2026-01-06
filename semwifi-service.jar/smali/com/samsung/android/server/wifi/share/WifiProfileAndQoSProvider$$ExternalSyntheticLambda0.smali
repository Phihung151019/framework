.class public final synthetic Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager$ConfigKeyProvider;
.implements Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$OnBssidListChangedListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getConfigKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->$r8$lambda$k1TUV4_bDT-8fABFNVMAWXwXi6U(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public onBssidListChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;

    .line 4
    .line 5
    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->$r8$lambda$plQxoh8xVHYFfsUeqnH8gjS3d0Y(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
