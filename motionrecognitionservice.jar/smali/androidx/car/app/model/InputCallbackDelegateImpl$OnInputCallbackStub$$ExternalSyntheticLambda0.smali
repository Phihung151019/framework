.class public final synthetic Landroidx/car/app/model/InputCallbackDelegateImpl$OnInputCallbackStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/car/app/utils/RemoteUtils$HostCall;


# instance fields
.field public final synthetic f$0:Landroidx/car/app/model/InputCallbackDelegateImpl$OnInputCallbackStub;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/car/app/model/InputCallbackDelegateImpl$OnInputCallbackStub;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/car/app/model/InputCallbackDelegateImpl$OnInputCallbackStub$$ExternalSyntheticLambda0;->f$0:Landroidx/car/app/model/InputCallbackDelegateImpl$OnInputCallbackStub;

    iput-object p2, p0, Landroidx/car/app/model/InputCallbackDelegateImpl$OnInputCallbackStub$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dispatch()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/car/app/model/InputCallbackDelegateImpl$OnInputCallbackStub$$ExternalSyntheticLambda0;->f$0:Landroidx/car/app/model/InputCallbackDelegateImpl$OnInputCallbackStub;

    iget-object v1, p0, Landroidx/car/app/model/InputCallbackDelegateImpl$OnInputCallbackStub$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/car/app/model/InputCallbackDelegateImpl$OnInputCallbackStub;->lambda$onInputTextChanged$1$androidx-car-app-model-InputCallbackDelegateImpl$OnInputCallbackStub(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
