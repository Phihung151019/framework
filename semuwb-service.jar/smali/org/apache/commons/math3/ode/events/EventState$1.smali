.class Lorg/apache/commons/math3/ode/events/EventState$1;
.super Ljava/lang/Object;
.source "EventState.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/ode/events/EventState;->evaluateStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/ode/events/EventState;

.field final synthetic val$interpolator:Lorg/apache/commons/math3/ode/sampling/StepInterpolator;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/ode/events/EventState;Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState$1;->this$0:Lorg/apache/commons/math3/ode/events/EventState;

    iput-object p2, p0, Lorg/apache/commons/math3/ode/events/EventState$1;->val$interpolator:Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 3
    .param p1, "t"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/ode/events/EventState$LocalMaxCountExceededException;
        }
    .end annotation

    .line 242
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState$1;->val$interpolator:Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    .line 243
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState$1;->this$0:Lorg/apache/commons/math3/ode/events/EventState;

    invoke-static {v0}, Lorg/apache/commons/math3/ode/events/EventState;->access$100(Lorg/apache/commons/math3/ode/events/EventState;)Lorg/apache/commons/math3/ode/events/EventHandler;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/ode/events/EventState$1;->this$0:Lorg/apache/commons/math3/ode/events/EventState;

    iget-object v2, p0, Lorg/apache/commons/math3/ode/events/EventState$1;->val$interpolator:Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    invoke-static {v1, v2}, Lorg/apache/commons/math3/ode/events/EventState;->access$000(Lorg/apache/commons/math3/ode/events/EventState;Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lorg/apache/commons/math3/ode/events/EventHandler;->g(D[D)D

    move-result-wide v0
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MaxCountExceededException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "mcee":Lorg/apache/commons/math3/exception/MaxCountExceededException;
    new-instance v1, Lorg/apache/commons/math3/ode/events/EventState$LocalMaxCountExceededException;

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/ode/events/EventState$LocalMaxCountExceededException;-><init>(Lorg/apache/commons/math3/exception/MaxCountExceededException;)V

    throw v1
.end method
