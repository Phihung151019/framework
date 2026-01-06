.class Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/wcm/IccManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "dbinfo"
.end annotation


# instance fields
.field private BSSIDcount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private BSSIDindex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private KeyGroup:Ljava/lang/String;

.field private L1data:[[F

.field private L2data:[[F

.field optDecisionBoundary:I


# direct methods
.method static bridge synthetic -$$Nest$fgetBSSIDindex(Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;->BSSIDindex:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetL1data(Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;)[[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;->L1data:[[F

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetL2data(Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;)[[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;->L2data:[[F

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputBSSIDcount(Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;->BSSIDcount:Ljava/util/HashMap;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputBSSIDindex(Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;->BSSIDindex:Ljava/util/HashMap;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputKeyGroup(Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;->KeyGroup:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputL1data(Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;[[F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;->L1data:[[F

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputL2data(Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;[[F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$dbinfo;->L2data:[[F

    .line 2
    .line 3
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/wcm/IccManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
