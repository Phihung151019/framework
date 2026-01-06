.class Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener$2;
.super Ljava/lang/Object;
.source "SemInputExternalListener.java"

# interfaces
.implements Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener$2;->this$0:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBodyDetected(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 192
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener$2;->this$0:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->-$$Nest$fgetregisteredList(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;)Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->LISTENER_SENSOR_WATCH:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 193
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;>;"
    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;

    .line 195
    .local v2, "element":Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;
    invoke-interface {v2, p1}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;->onBodyDetected(I)V

    .line 196
    .end local v2    # "element":Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;
    goto :goto_0

    .line 197
    :cond_1
    return-void
.end method

.method public onDesktopModeStateChanged(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 183
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener$2;->this$0:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->-$$Nest$fgetregisteredList(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;)Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->LISTENER_DEX:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 184
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;>;"
    if-nez v0, :cond_0

    return-void

    .line 185
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;

    .line 186
    .local v2, "element":Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;
    invoke-interface {v2, p1}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;->onDesktopModeStateChanged(I)V

    .line 187
    .end local v2    # "element":Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;
    goto :goto_0

    .line 188
    :cond_1
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 3
    .param p1, "displayRotation"    # I

    .line 156
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener$2;->this$0:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->-$$Nest$fgetregisteredList(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;)Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->LISTENER_DISPLAY:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 157
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;>;"
    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;

    .line 159
    .local v2, "element":Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;
    invoke-interface {v2, p1}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;->onDisplayChanged(I)V

    .line 160
    .end local v2    # "element":Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;
    goto :goto_0

    .line 161
    :cond_1
    return-void
.end method

.method public onDisplayStateChanged(ZIII)V
    .locals 3
    .param p1, "isEarly"    # Z
    .param p2, "stateLogical"    # I
    .param p3, "statePhysical"    # I
    .param p4, "displayType"    # I

    .line 146
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener$2;->this$0:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->-$$Nest$fgetregisteredList(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;)Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->LISTENER_DISPLAY_STATE:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 147
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;>;"
    if-nez v0, :cond_0

    return-void

    .line 149
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;

    .line 150
    .local v2, "element":Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;->onDisplayStateChanged(ZIII)V

    .line 151
    .end local v2    # "element":Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;
    goto :goto_0

    .line 152
    :cond_1
    return-void
.end method

.method public onFoldStateChanged(Z)V
    .locals 3
    .param p1, "folded"    # Z

    .line 165
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener$2;->this$0:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->-$$Nest$fgetregisteredList(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;)Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->LISTENER_FOLD_STATE:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 166
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;>;"
    if-nez v0, :cond_0

    return-void

    .line 167
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;

    .line 168
    .local v2, "element":Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;
    invoke-interface {v2, p1}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;->onFoldStateChanged(Z)V

    .line 169
    .end local v2    # "element":Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;
    goto :goto_0

    .line 170
    :cond_1
    return-void
.end method

.method public onLpScanSensorChanged(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 174
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener$2;->this$0:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->-$$Nest$fgetregisteredList(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;)Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->LISTENER_PROX_LP_SCAN:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 175
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;>;"
    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;

    .line 177
    .local v2, "element":Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;
    invoke-interface {v2, p1}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;->onLpScanSensorChanged(I)V

    .line 178
    .end local v2    # "element":Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;
    goto :goto_0

    .line 179
    :cond_1
    return-void
.end method

.method public onSemUEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener$2;->this$0:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;->-$$Nest$fgetregisteredList(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;)Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->OBSERVER_UEVENT:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 137
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;>;"
    if-nez v0, :cond_0

    return-void

    .line 138
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;

    .line 139
    .local v2, "element":Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;
    invoke-interface {v2, p1}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;->onSemUEvent(Ljava/lang/String;)V

    .line 140
    .end local v2    # "element":Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;
    goto :goto_0

    .line 142
    :cond_1
    return-void
.end method
