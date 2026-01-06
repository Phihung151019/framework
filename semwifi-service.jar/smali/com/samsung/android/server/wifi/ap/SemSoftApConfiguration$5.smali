.class Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$5;
.super Landroid/util/SparseIntArray;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;Z)Landroid/net/wifi/SoftApConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;->-$$Nest$fgetchannel2G(Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, v0, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
