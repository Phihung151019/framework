.class Landroidx/car/app/serialization/Bundler$TracedBundlerException;
.super Landroidx/car/app/serialization/BundlerException;
.source "Bundler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/serialization/Bundler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TracedBundlerException"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "trace"    # Landroidx/car/app/serialization/Bundler$Trace;

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frames: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/car/app/serialization/Bundler$Trace;->toFlatString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/car/app/serialization/BundlerException;-><init>(Ljava/lang/String;)V

    .line 857
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "trace"    # Landroidx/car/app/serialization/Bundler$Trace;
    .param p3, "e"    # Ljava/lang/Throwable;

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frames: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/car/app/serialization/Bundler$Trace;->toFlatString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Landroidx/car/app/serialization/BundlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 861
    return-void
.end method
