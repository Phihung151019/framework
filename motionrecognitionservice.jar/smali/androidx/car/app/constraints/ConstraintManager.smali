.class public Landroidx/car/app/constraints/ConstraintManager;
.super Ljava/lang/Object;
.source "ConstraintManager.java"

# interfaces
.implements Landroidx/car/app/managers/Manager;


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x2
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/constraints/ConstraintManager$ContentLimitType;
    }
.end annotation


# static fields
.field public static final CONTENT_LIMIT_TYPE_GRID:I = 0x1

.field public static final CONTENT_LIMIT_TYPE_LIST:I = 0x0

.field public static final CONTENT_LIMIT_TYPE_PANE:I = 0x4

.field public static final CONTENT_LIMIT_TYPE_PLACE_LIST:I = 0x2

.field public static final CONTENT_LIMIT_TYPE_ROUTE_LIST:I = 0x3


# instance fields
.field private final mCarContext:Landroidx/car/app/CarContext;

.field private final mHostDispatcher:Landroidx/car/app/HostDispatcher;


# direct methods
.method private constructor <init>(Landroidx/car/app/CarContext;Landroidx/car/app/HostDispatcher;)V
    .locals 0
    .param p1, "context"    # Landroidx/car/app/CarContext;
    .param p2, "hostDispatcher"    # Landroidx/car/app/HostDispatcher;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p1, p0, Landroidx/car/app/constraints/ConstraintManager;->mCarContext:Landroidx/car/app/CarContext;

    .line 198
    iput-object p2, p0, Landroidx/car/app/constraints/ConstraintManager;->mHostDispatcher:Landroidx/car/app/HostDispatcher;

    .line 199
    return-void
.end method

.method public static create(Landroidx/car/app/CarContext;Landroidx/car/app/HostDispatcher;)Landroidx/car/app/constraints/ConstraintManager;
    .locals 3
    .param p0, "context"    # Landroidx/car/app/CarContext;
    .param p1, "hostDispatcher"    # Landroidx/car/app/HostDispatcher;

    .line 193
    new-instance v0, Landroidx/car/app/constraints/ConstraintManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/CarContext;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/car/app/HostDispatcher;

    invoke-direct {v0, v1, v2}, Landroidx/car/app/constraints/ConstraintManager;-><init>(Landroidx/car/app/CarContext;Landroidx/car/app/HostDispatcher;)V

    return-object v0
.end method

.method private getResourceIdForContentType(I)I
    .locals 1
    .param p1, "contentType"    # I

    .line 170
    packed-switch p1, :pswitch_data_0

    .line 181
    sget v0, Landroidx/car/app/R$integer;->content_limit_list:I

    return v0

    .line 174
    :pswitch_0
    sget v0, Landroidx/car/app/R$integer;->content_limit_pane:I

    return v0

    .line 178
    :pswitch_1
    sget v0, Landroidx/car/app/R$integer;->content_limit_route_list:I

    return v0

    .line 176
    :pswitch_2
    sget v0, Landroidx/car/app/R$integer;->content_limit_place_list:I

    return v0

    .line 172
    :pswitch_3
    sget v0, Landroidx/car/app/R$integer;->content_limit_grid:I

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$getContentLimit$0(ILandroidx/car/app/constraints/IConstraintHost;)Ljava/lang/Integer;
    .locals 1
    .param p0, "contentLimitType"    # I
    .param p1, "host"    # Landroidx/car/app/constraints/IConstraintHost;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    invoke-interface {p1, p0}, Landroidx/car/app/constraints/IConstraintHost;->getContentLimit(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContentLimit(I)I
    .locals 5
    .param p1, "contentLimitType"    # I

    .line 117
    const/4 v0, 0x0

    .line 120
    .local v0, "limit":Ljava/lang/Integer;
    :try_start_0
    iget-object v1, p0, Landroidx/car/app/constraints/ConstraintManager;->mHostDispatcher:Landroidx/car/app/HostDispatcher;

    const-string v2, "constraints"

    const-string v3, "getContentLimit"

    new-instance v4, Landroidx/car/app/constraints/ConstraintManager$$ExternalSyntheticLambda1;

    invoke-direct {v4, p1}, Landroidx/car/app/constraints/ConstraintManager$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4}, Landroidx/car/app/HostDispatcher;->dispatchForResult(Ljava/lang/String;Ljava/lang/String;Landroidx/car/app/HostCall;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 129
    goto :goto_0

    .line 126
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CarApp"

    const-string v3, "Failed to retrieve list limit from the host, using defaults"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 136
    :cond_0
    iget-object v1, p0, Landroidx/car/app/constraints/ConstraintManager;->mCarContext:Landroidx/car/app/CarContext;

    invoke-virtual {v1}, Landroidx/car/app/CarContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, p1}, Landroidx/car/app/constraints/ConstraintManager;->getResourceIdForContentType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    return v1
.end method

.method public isAppDrivenRefreshEnabled()Z
    .locals 4
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x6
    .end annotation

    .line 154
    :try_start_0
    iget-object v0, p0, Landroidx/car/app/constraints/ConstraintManager;->mHostDispatcher:Landroidx/car/app/HostDispatcher;

    const-string v1, "constraints"

    const-string v2, "isAppDrivenRefreshEnabled"

    new-instance v3, Landroidx/car/app/constraints/ConstraintManager$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroidx/car/app/constraints/ConstraintManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Landroidx/car/app/HostDispatcher;->dispatchForResult(Ljava/lang/String;Ljava/lang/String;Landroidx/car/app/HostCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 158
    .local v0, "result":Ljava/lang/Boolean;
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 159
    .end local v0    # "result":Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CarApp"

    const-string v2, "Failed to retrieve if the host supports appDriven Refresh, using defaults"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method
