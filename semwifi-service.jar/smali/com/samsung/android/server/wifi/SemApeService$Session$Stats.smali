.class public Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemApeService$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stats"
.end annotation


# instance fields
.field final avg:I

.field final max:I

.field final min:I

.field final std:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->min:I

    .line 5
    .line 6
    iput p2, p0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->max:I

    .line 7
    .line 8
    iput p3, p0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->avg:I

    .line 9
    .line 10
    iput p4, p0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->std:I

    .line 11
    .line 12
    return-void
.end method
