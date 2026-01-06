.class Landroidx/car/app/serialization/Bundler$CycleDetectedBundlerException;
.super Landroidx/car/app/serialization/Bundler$TracedBundlerException;
.source "Bundler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/serialization/Bundler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CycleDetectedBundlerException"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "trace"    # Landroidx/car/app/serialization/Bundler$Trace;

    .line 867
    invoke-direct {p0, p1, p2}, Landroidx/car/app/serialization/Bundler$TracedBundlerException;-><init>(Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;)V

    .line 868
    return-void
.end method
