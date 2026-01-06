.class Lcom/samsung/android/server/wifi/wcm/IccManager$BssidGroup;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/wcm/IccManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BssidGroup"
.end annotation


# instance fields
.field public bssid:I

.field public groupId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$BssidGroup;->bssid:I

    .line 5
    .line 6
    iput p2, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$BssidGroup;->groupId:I

    .line 7
    .line 8
    return-void
.end method
