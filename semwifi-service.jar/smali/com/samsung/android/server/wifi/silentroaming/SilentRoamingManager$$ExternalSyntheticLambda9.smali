.class public final synthetic Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda9;->f$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda9;->f$1:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda9;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda9;->f$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda9;->f$1:Ljava/util/List;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$$ExternalSyntheticLambda9;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    .line 8
    .line 9
    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->$r8$lambda$kvEnfG8feu8kUuAKUyBdZFPOpf8(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/util/List;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method
