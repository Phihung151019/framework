.class public Lcom/samsung/vekit/Common/VEContext;
.super Lcom/samsung/vekit/Common/Object/Element;
.source "VEContext.java"

# interfaces
.implements Lcom/samsung/vekit/Common/State/VEStateInterface;


# instance fields
.field private final animationManager:Lcom/samsung/vekit/Manager/AnimationManager;

.field private final contentManager:Lcom/samsung/vekit/Manager/ContentManager;

.field private final filterManager:Lcom/samsung/vekit/Manager/FilterManager;

.field private frameworkType:Lcom/samsung/vekit/Common/Type/FrameworkType;

.field private frcSupportInfo:[Lcom/samsung/vekit/Common/Object/FrcSupportInfo;

.field private final itemManager:Lcom/samsung/vekit/Manager/ItemManager;

.field private final layerGroup:Lcom/samsung/vekit/Layer/LayerGroup;

.field private final layerManager:Lcom/samsung/vekit/Manager/LayerManager;

.field private final logProfileManager:Lcom/samsung/vekit/Manager/LogProfileManager;

.field private nativeInterfaceWrapper:Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

.field private state:Lcom/samsung/vekit/Common/State/VEKitState;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 37
    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->CONTEXT:Lcom/samsung/vekit/Common/Type/ElementType;

    const/4 v1, 0x0

    const-string v2, "Context"

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/samsung/vekit/Common/Object/Element;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ElementType;ILjava/lang/String;)V

    .line 38
    new-instance v0, Lcom/samsung/vekit/Manager/ItemManager;

    invoke-direct {v0, p0}, Lcom/samsung/vekit/Manager/ItemManager;-><init>(Lcom/samsung/vekit/Common/VEContext;)V

    iput-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->itemManager:Lcom/samsung/vekit/Manager/ItemManager;

    .line 39
    new-instance v0, Lcom/samsung/vekit/Manager/LayerManager;

    invoke-direct {v0, p0}, Lcom/samsung/vekit/Manager/LayerManager;-><init>(Lcom/samsung/vekit/Common/VEContext;)V

    iput-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->layerManager:Lcom/samsung/vekit/Manager/LayerManager;

    .line 40
    new-instance v0, Lcom/samsung/vekit/Manager/AnimationManager;

    invoke-direct {v0, p0}, Lcom/samsung/vekit/Manager/AnimationManager;-><init>(Lcom/samsung/vekit/Common/VEContext;)V

    iput-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->animationManager:Lcom/samsung/vekit/Manager/AnimationManager;

    .line 41
    new-instance v0, Lcom/samsung/vekit/Manager/ContentManager;

    invoke-direct {v0, p0}, Lcom/samsung/vekit/Manager/ContentManager;-><init>(Lcom/samsung/vekit/Common/VEContext;)V

    iput-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->contentManager:Lcom/samsung/vekit/Manager/ContentManager;

    .line 42
    new-instance v0, Lcom/samsung/vekit/Manager/FilterManager;

    invoke-direct {v0, p0}, Lcom/samsung/vekit/Manager/FilterManager;-><init>(Lcom/samsung/vekit/Common/VEContext;)V

    iput-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->filterManager:Lcom/samsung/vekit/Manager/FilterManager;

    .line 43
    new-instance v0, Lcom/samsung/vekit/Manager/LogProfileManager;

    invoke-direct {v0, p0}, Lcom/samsung/vekit/Manager/LogProfileManager;-><init>(Lcom/samsung/vekit/Common/VEContext;)V

    iput-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->logProfileManager:Lcom/samsung/vekit/Manager/LogProfileManager;

    .line 44
    new-instance v0, Lcom/samsung/vekit/Layer/LayerGroup;

    invoke-direct {v0, p0}, Lcom/samsung/vekit/Layer/LayerGroup;-><init>(Lcom/samsung/vekit/Common/VEContext;)V

    iput-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->layerGroup:Lcom/samsung/vekit/Layer/LayerGroup;

    .line 45
    invoke-static {}, Lcom/samsung/vekit/Common/Type/ViewMode;->values()[Lcom/samsung/vekit/Common/Type/ViewMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/samsung/vekit/Common/Object/FrcSupportInfo;

    iput-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->frcSupportInfo:[Lcom/samsung/vekit/Common/Object/FrcSupportInfo;

    .line 46
    sget-object v0, Lcom/samsung/vekit/Common/State/VEKitState;->IDLE:Lcom/samsung/vekit/Common/State/VEKitState;

    invoke-virtual {p0, v0}, Lcom/samsung/vekit/Common/VEContext;->setState(Lcom/samsung/vekit/Common/State/VEKitState;)V

    .line 47
    new-instance v0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    invoke-direct {v0, p0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;-><init>(Lcom/samsung/vekit/Common/State/VEStateInterface;)V

    iput-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->nativeInterfaceWrapper:Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    .line 48
    return-void
.end method


# virtual methods
.method public checkFrcAvailable(Lcom/samsung/vekit/Common/Type/ViewMode;Lcom/samsung/vekit/Common/Type/FpsType;Lcom/samsung/vekit/Common/Type/SpeedType;)Z
    .locals 2
    .param p1, "viewMode"    # Lcom/samsung/vekit/Common/Type/ViewMode;
    .param p2, "fpsType"    # Lcom/samsung/vekit/Common/Type/FpsType;
    .param p3, "speedType"    # Lcom/samsung/vekit/Common/Type/SpeedType;

    .line 93
    iget-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->frcSupportInfo:[Lcom/samsung/vekit/Common/Object/FrcSupportInfo;

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Type/ViewMode;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p2, p3}, Lcom/samsung/vekit/Common/Object/FrcSupportInfo;->checkFrcAvailable(Lcom/samsung/vekit/Common/Type/FpsType;Lcom/samsung/vekit/Common/Type/SpeedType;)Z

    move-result v0

    return v0
.end method

.method public getAnimationManager()Lcom/samsung/vekit/Manager/AnimationManager;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->animationManager:Lcom/samsung/vekit/Manager/AnimationManager;

    return-object v0
.end method

.method public getContentManager()Lcom/samsung/vekit/Manager/ContentManager;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->contentManager:Lcom/samsung/vekit/Manager/ContentManager;

    return-object v0
.end method

.method public getFilterManager()Lcom/samsung/vekit/Manager/FilterManager;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->filterManager:Lcom/samsung/vekit/Manager/FilterManager;

    return-object v0
.end method

.method public getFrameworkType()Lcom/samsung/vekit/Common/Type/FrameworkType;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->frameworkType:Lcom/samsung/vekit/Common/Type/FrameworkType;

    return-object v0
.end method

.method public getFrcSupportInfo(Lcom/samsung/vekit/Common/Type/ViewMode;)Lcom/samsung/vekit/Common/Object/FrcSupportInfo;
    .locals 2
    .param p1, "viewMode"    # Lcom/samsung/vekit/Common/Type/ViewMode;

    .line 89
    iget-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->frcSupportInfo:[Lcom/samsung/vekit/Common/Object/FrcSupportInfo;

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Type/ViewMode;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getItemManager()Lcom/samsung/vekit/Manager/ItemManager;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->itemManager:Lcom/samsung/vekit/Manager/ItemManager;

    return-object v0
.end method

.method public getLayerGroup()Lcom/samsung/vekit/Layer/LayerGroup;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->layerGroup:Lcom/samsung/vekit/Layer/LayerGroup;

    return-object v0
.end method

.method public getLayerManager()Lcom/samsung/vekit/Manager/LayerManager;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->layerManager:Lcom/samsung/vekit/Manager/LayerManager;

    return-object v0
.end method

.method public getLogProfileManager()Lcom/samsung/vekit/Manager/LogProfileManager;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->logProfileManager:Lcom/samsung/vekit/Manager/LogProfileManager;

    return-object v0
.end method

.method public getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->nativeInterfaceWrapper:Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    return-object v0
.end method

.method public declared-synchronized getState()Lcom/samsung/vekit/Common/State/VEKitState;
    .locals 1

    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->state:Lcom/samsung/vekit/Common/State/VEKitState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 103
    .end local p0    # "this":Lcom/samsung/vekit/Common/VEContext;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public initialize()V
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->nativeInterfaceWrapper:Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    iget-object v1, p0, Lcom/samsung/vekit/Common/VEContext;->layerGroup:Lcom/samsung/vekit/Layer/LayerGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->create(Lcom/samsung/vekit/Common/Object/Element;)V

    .line 52
    iget-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->frcSupportInfo:[Lcom/samsung/vekit/Common/Object/FrcSupportInfo;

    sget-object v1, Lcom/samsung/vekit/Common/Type/ViewMode;->PREVIEW:Lcom/samsung/vekit/Common/Type/ViewMode;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Type/ViewMode;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/vekit/Common/VEContext;->nativeInterfaceWrapper:Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    sget-object v3, Lcom/samsung/vekit/Common/Type/ViewMode;->PREVIEW:Lcom/samsung/vekit/Common/Type/ViewMode;

    invoke-virtual {v3}, Lcom/samsung/vekit/Common/Type/ViewMode;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->getFrcSupportInfo(I)Lcom/samsung/vekit/Common/Object/FrcSupportInfo;

    move-result-object v2

    aput-object v2, v0, v1

    .line 53
    iget-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->frcSupportInfo:[Lcom/samsung/vekit/Common/Object/FrcSupportInfo;

    sget-object v1, Lcom/samsung/vekit/Common/Type/ViewMode;->EXPORT:Lcom/samsung/vekit/Common/Type/ViewMode;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Type/ViewMode;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/vekit/Common/VEContext;->nativeInterfaceWrapper:Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    sget-object v3, Lcom/samsung/vekit/Common/Type/ViewMode;->EXPORT:Lcom/samsung/vekit/Common/Type/ViewMode;

    invoke-virtual {v3}, Lcom/samsung/vekit/Common/Type/ViewMode;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->getFrcSupportInfo(I)Lcom/samsung/vekit/Common/Object/FrcSupportInfo;

    move-result-object v2

    aput-object v2, v0, v1

    .line 54
    return-void
.end method

.method public release()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->nativeInterfaceWrapper:Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->releaseFramework()V

    .line 58
    return-void
.end method

.method public setFrameworkType(Lcom/samsung/vekit/Common/Type/FrameworkType;)V
    .locals 0
    .param p1, "frameworkType"    # Lcom/samsung/vekit/Common/Type/FrameworkType;

    .line 120
    iput-object p1, p0, Lcom/samsung/vekit/Common/VEContext;->frameworkType:Lcom/samsung/vekit/Common/Type/FrameworkType;

    .line 121
    return-void
.end method

.method public declared-synchronized setState(Lcom/samsung/vekit/Common/State/VEKitState;)V
    .locals 0
    .param p1, "state"    # Lcom/samsung/vekit/Common/State/VEKitState;

    monitor-enter p0

    .line 108
    :try_start_0
    iput-object p1, p0, Lcom/samsung/vekit/Common/VEContext;->state:Lcom/samsung/vekit/Common/State/VEKitState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 107
    .end local p0    # "this":Lcom/samsung/vekit/Common/VEContext;
    .end local p1    # "state":Lcom/samsung/vekit/Common/State/VEKitState;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public update()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->nativeInterfaceWrapper:Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    invoke-virtual {v0, p0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->update(Lcom/samsung/vekit/Common/Object/Element;)V

    .line 99
    return-void
.end method
