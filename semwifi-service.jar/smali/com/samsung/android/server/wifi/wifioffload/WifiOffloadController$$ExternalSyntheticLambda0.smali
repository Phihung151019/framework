.class public final synthetic Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 2
    .line 3
    check-cast p1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->$r8$lambda$ymp7uLyBV4sno6o0j-mkehPC3Ao(Ljava/lang/String;Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method
