.class Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/wcm/IccManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataElement"
.end annotation


# instance fields
.field public bssid:Ljava/lang/Integer;

.field public groupId:Ljava/lang/Integer;

.field public key:Ljava/lang/String;

.field public wifiConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;->bssid:Ljava/lang/Integer;

    .line 3
    iput-object p3, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;->groupId:Ljava/lang/Integer;

    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;->key:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;->wifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method
