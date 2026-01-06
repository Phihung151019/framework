.class public interface abstract Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl;
.super Ljava/lang/Object;
.source "RequestProcessorImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Callback;,
        Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;
    }
.end annotation


# virtual methods
.method public abstract abortCaptures()V
.end method

.method public abstract setImageProcessor(ILandroidx/camera/extensions/impl/advanced/ImageProcessorImpl;)V
.end method

.method public abstract setRepeating(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Callback;)I
.end method

.method public abstract stopRepeating()V
.end method

.method public abstract submit(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Callback;)I
.end method

.method public abstract submit(Ljava/util/List;Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Callback;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;",
            ">;",
            "Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Callback;",
            ")I"
        }
    .end annotation
.end method
