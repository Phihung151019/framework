.class final Landroidx/car/app/model/DurationSpan$Api26Impl;
.super Ljava/lang/Object;
.source "DurationSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/model/DurationSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api26Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    return-void
.end method

.method public static create(Ljava/time/Duration;)Landroidx/car/app/model/DurationSpan;
    .locals 3
    .param p0, "duration"    # Ljava/time/Duration;

    .line 126
    new-instance v0, Landroidx/car/app/model/DurationSpan;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/Duration;

    invoke-virtual {v1}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroidx/car/app/model/DurationSpan;-><init>(J)V

    return-object v0
.end method
