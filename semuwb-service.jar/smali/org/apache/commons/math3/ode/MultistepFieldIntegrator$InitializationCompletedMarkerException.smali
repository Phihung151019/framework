.class Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$InitializationCompletedMarkerException;
.super Ljava/lang/RuntimeException;
.source "MultistepFieldIntegrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitializationCompletedMarkerException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1a9032983af580d2L


# direct methods
.method constructor <init>()V
    .locals 2

    .line 449
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 450
    return-void
.end method
