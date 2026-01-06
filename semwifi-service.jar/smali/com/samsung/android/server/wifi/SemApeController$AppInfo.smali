.class Lcom/samsung/android/server/wifi/SemApeController$AppInfo;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemApeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppInfo"
.end annotation


# instance fields
.field final packageName:Ljava/lang/String;

.field final type:I

.field final uid:I


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->type:I

    .line 5
    .line 6
    iput p2, p0, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->uid:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->packageName:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method equals(II)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->type:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->uid:I

    .line 6
    .line 7
    if-ne p0, p2, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method
