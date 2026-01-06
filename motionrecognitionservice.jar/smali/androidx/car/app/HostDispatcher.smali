.class public final Landroidx/car/app/HostDispatcher;
.super Ljava/lang/Object;
.source "HostDispatcher.java"


# instance fields
.field private mAppHost:Landroidx/car/app/IAppHost;

.field private mCarHost:Landroidx/car/app/ICarHost;

.field private mConstraintHost:Landroidx/car/app/constraints/IConstraintHost;

.field private mNavigationHost:Landroidx/car/app/navigation/INavigationHost;

.field private mSuggestionHost:Landroidx/car/app/suggestion/ISuggestionHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/String;Ljava/lang/String;Landroidx/car/app/HostCall;)V
    .locals 1
    .param p1, "hostType"    # Ljava/lang/String;
    .param p2, "callName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ServiceT:",
            "Ljava/lang/Object;",
            "ReturnT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/car/app/HostCall<",
            "TServiceT;TReturnT;>;)V"
        }
    .end annotation

    .line 99
    .local p3, "call":Landroidx/car/app/HostCall;, "Landroidx/car/app/HostCall<TServiceT;TReturnT;>;"
    new-instance v0, Landroidx/car/app/HostDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/car/app/HostDispatcher$$ExternalSyntheticLambda0;-><init>(Landroidx/car/app/HostDispatcher;Ljava/lang/String;Ljava/lang/String;Landroidx/car/app/HostCall;)V

    invoke-static {p2, v0}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallToHost(Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$RemoteCall;)V

    .line 109
    return-void
.end method

.method public dispatchForResult(Ljava/lang/String;Ljava/lang/String;Landroidx/car/app/HostCall;)Ljava/lang/Object;
    .locals 1
    .param p1, "hostType"    # Ljava/lang/String;
    .param p2, "callName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ServiceT:",
            "Ljava/lang/Object;",
            "ReturnT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/car/app/HostCall<",
            "TServiceT;TReturnT;>;)TReturnT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    .local p3, "call":Landroidx/car/app/HostCall;, "Landroidx/car/app/HostCall<TServiceT;TReturnT;>;"
    new-instance v0, Landroidx/car/app/HostDispatcher$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/car/app/HostDispatcher$$ExternalSyntheticLambda1;-><init>(Landroidx/car/app/HostDispatcher;Ljava/lang/String;Ljava/lang/String;Landroidx/car/app/HostCall;)V

    invoke-static {p2, v0}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallToHostForResult(Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$RemoteCall;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getHost(Ljava/lang/String;)Landroid/os/IInterface;
    .locals 3
    .param p1, "hostType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Landroidx/car/app/HostDispatcher;->mCarHost:Landroidx/car/app/ICarHost;

    if-nez v0, :cond_0

    .line 138
    const-string v0, "CarApp.Dispatch"

    const-string v1, "Host is not bound when attempting to retrieve host service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v0, 0x0

    return-object v0

    .line 144
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v0, "navigation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "suggestion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "car"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "app"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v0, "constraints"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 192
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid host type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :pswitch_0
    iget-object v0, p0, Landroidx/car/app/HostDispatcher;->mCarHost:Landroidx/car/app/ICarHost;

    .line 190
    .local v0, "host":Landroid/os/IInterface;
    goto :goto_2

    .line 177
    .end local v0    # "host":Landroid/os/IInterface;
    :pswitch_1
    iget-object v0, p0, Landroidx/car/app/HostDispatcher;->mNavigationHost:Landroidx/car/app/navigation/INavigationHost;

    if-nez v0, :cond_2

    .line 178
    new-instance v0, Landroidx/car/app/HostDispatcher$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Landroidx/car/app/HostDispatcher$$ExternalSyntheticLambda5;-><init>(Landroidx/car/app/HostDispatcher;)V

    .line 179
    const-string v1, "getHost(Navigation)"

    invoke-static {v1, v0}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallToHostForResult(Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$RemoteCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/navigation/INavigationHost;

    iput-object v0, p0, Landroidx/car/app/HostDispatcher;->mNavigationHost:Landroidx/car/app/navigation/INavigationHost;

    .line 186
    :cond_2
    iget-object v0, p0, Landroidx/car/app/HostDispatcher;->mNavigationHost:Landroidx/car/app/navigation/INavigationHost;

    .line 187
    .restart local v0    # "host":Landroid/os/IInterface;
    goto :goto_2

    .line 165
    .end local v0    # "host":Landroid/os/IInterface;
    :pswitch_2
    iget-object v0, p0, Landroidx/car/app/HostDispatcher;->mSuggestionHost:Landroidx/car/app/suggestion/ISuggestionHost;

    if-nez v0, :cond_3

    .line 166
    new-instance v0, Landroidx/car/app/HostDispatcher$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroidx/car/app/HostDispatcher$$ExternalSyntheticLambda4;-><init>(Landroidx/car/app/HostDispatcher;)V

    .line 167
    const-string v1, "getHost(Suggestion)"

    invoke-static {v1, v0}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallToHostForResult(Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$RemoteCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/suggestion/ISuggestionHost;

    iput-object v0, p0, Landroidx/car/app/HostDispatcher;->mSuggestionHost:Landroidx/car/app/suggestion/ISuggestionHost;

    .line 174
    :cond_3
    iget-object v0, p0, Landroidx/car/app/HostDispatcher;->mSuggestionHost:Landroidx/car/app/suggestion/ISuggestionHost;

    .line 175
    .restart local v0    # "host":Landroid/os/IInterface;
    goto :goto_2

    .line 155
    .end local v0    # "host":Landroid/os/IInterface;
    :pswitch_3
    iget-object v0, p0, Landroidx/car/app/HostDispatcher;->mConstraintHost:Landroidx/car/app/constraints/IConstraintHost;

    if-nez v0, :cond_4

    .line 156
    new-instance v0, Landroidx/car/app/HostDispatcher$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroidx/car/app/HostDispatcher$$ExternalSyntheticLambda3;-><init>(Landroidx/car/app/HostDispatcher;)V

    .line 157
    const-string v1, "getHost(Constraints)"

    invoke-static {v1, v0}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallToHostForResult(Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$RemoteCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/constraints/IConstraintHost;

    iput-object v0, p0, Landroidx/car/app/HostDispatcher;->mConstraintHost:Landroidx/car/app/constraints/IConstraintHost;

    .line 162
    :cond_4
    iget-object v0, p0, Landroidx/car/app/HostDispatcher;->mConstraintHost:Landroidx/car/app/constraints/IConstraintHost;

    .line 163
    .restart local v0    # "host":Landroid/os/IInterface;
    goto :goto_2

    .line 146
    .end local v0    # "host":Landroid/os/IInterface;
    :pswitch_4
    iget-object v0, p0, Landroidx/car/app/HostDispatcher;->mAppHost:Landroidx/car/app/IAppHost;

    if-nez v0, :cond_5

    .line 147
    new-instance v0, Landroidx/car/app/HostDispatcher$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroidx/car/app/HostDispatcher$$ExternalSyntheticLambda2;-><init>(Landroidx/car/app/HostDispatcher;)V

    .line 148
    const-string v1, "getHost(App)"

    invoke-static {v1, v0}, Landroidx/car/app/utils/RemoteUtils;->dispatchCallToHostForResult(Ljava/lang/String;Landroidx/car/app/utils/RemoteUtils$RemoteCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/IAppHost;

    iput-object v0, p0, Landroidx/car/app/HostDispatcher;->mAppHost:Landroidx/car/app/IAppHost;

    .line 152
    :cond_5
    iget-object v0, p0, Landroidx/car/app/HostDispatcher;->mAppHost:Landroidx/car/app/IAppHost;

    .line 153
    .restart local v0    # "host":Landroid/os/IInterface;
    nop

    .line 194
    :goto_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x5fc459ca -> :sswitch_4
        0x17a21 -> :sswitch_3
        0x17fd4 -> :sswitch_2
        0x4763ca04 -> :sswitch_1
        0x6f060a14 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic lambda$dispatch$1$androidx-car-app-HostDispatcher(Ljava/lang/String;Ljava/lang/String;Landroidx/car/app/HostCall;)Ljava/lang/Object;
    .locals 4
    .param p1, "hostType"    # Ljava/lang/String;
    .param p2, "callName"    # Ljava/lang/String;
    .param p3, "call"    # Landroidx/car/app/HostCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    invoke-virtual {p0, p1}, Landroidx/car/app/HostDispatcher;->getHost(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 101
    .local v0, "service":Landroid/os/IInterface;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not retrieve host while dispatching call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CarApp.Dispatch"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-object v1

    .line 106
    :cond_0
    invoke-interface {p3, v0}, Landroidx/car/app/HostCall;->dispatch(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-object v1
.end method

.method synthetic lambda$dispatchForResult$0$androidx-car-app-HostDispatcher(Ljava/lang/String;Ljava/lang/String;Landroidx/car/app/HostCall;)Ljava/lang/Object;
    .locals 3
    .param p1, "hostType"    # Ljava/lang/String;
    .param p2, "callName"    # Ljava/lang/String;
    .param p3, "call"    # Landroidx/car/app/HostCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1}, Landroidx/car/app/HostDispatcher;->getHost(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 76
    .local v0, "service":Landroid/os/IInterface;
    if-nez v0, :cond_0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not retrieve host while dispatching call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarApp.Dispatch"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v1, 0x0

    return-object v1

    .line 81
    :cond_0
    invoke-interface {p3, v0}, Landroidx/car/app/HostCall;->dispatch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method synthetic lambda$getHost$2$androidx-car-app-HostDispatcher()Landroidx/car/app/IAppHost;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Landroidx/car/app/HostDispatcher;->mCarHost:Landroidx/car/app/ICarHost;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/ICarHost;

    const-string v1, "app"

    invoke-interface {v0, v1}, Landroidx/car/app/ICarHost;->getHost(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/car/app/IAppHost$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/car/app/IAppHost;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getHost$3$androidx-car-app-HostDispatcher()Landroidx/car/app/constraints/IConstraintHost;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Landroidx/car/app/HostDispatcher;->mCarHost:Landroidx/car/app/ICarHost;

    .line 159
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/ICarHost;

    const-string v1, "constraints"

    invoke-interface {v0, v1}, Landroidx/car/app/ICarHost;->getHost(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 158
    invoke-static {v0}, Landroidx/car/app/constraints/IConstraintHost$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/car/app/constraints/IConstraintHost;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getHost$4$androidx-car-app-HostDispatcher()Landroidx/car/app/suggestion/ISuggestionHost;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Landroidx/car/app/HostDispatcher;->mCarHost:Landroidx/car/app/ICarHost;

    .line 170
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/ICarHost;

    const-string v1, "suggestion"

    invoke-interface {v0, v1}, Landroidx/car/app/ICarHost;->getHost(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 169
    invoke-static {v0}, Landroidx/car/app/suggestion/ISuggestionHost$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/car/app/suggestion/ISuggestionHost;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getHost$5$androidx-car-app-HostDispatcher()Landroidx/car/app/navigation/INavigationHost;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Landroidx/car/app/HostDispatcher;->mCarHost:Landroidx/car/app/ICarHost;

    .line 182
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/ICarHost;

    const-string v1, "navigation"

    invoke-interface {v0, v1}, Landroidx/car/app/ICarHost;->getHost(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 181
    invoke-static {v0}, Landroidx/car/app/navigation/INavigationHost$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/car/app/navigation/INavigationHost;

    move-result-object v0

    return-object v0
.end method

.method resetHosts()V
    .locals 1

    .line 122
    invoke-static {}, Landroidx/car/app/utils/ThreadUtils;->checkMainThread()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/HostDispatcher;->mCarHost:Landroidx/car/app/ICarHost;

    .line 125
    iput-object v0, p0, Landroidx/car/app/HostDispatcher;->mAppHost:Landroidx/car/app/IAppHost;

    .line 126
    iput-object v0, p0, Landroidx/car/app/HostDispatcher;->mNavigationHost:Landroidx/car/app/navigation/INavigationHost;

    .line 127
    return-void
.end method

.method public setCarHost(Landroidx/car/app/ICarHost;)V
    .locals 0
    .param p1, "carHost"    # Landroidx/car/app/ICarHost;

    .line 113
    invoke-static {}, Landroidx/car/app/utils/ThreadUtils;->checkMainThread()V

    .line 115
    invoke-virtual {p0}, Landroidx/car/app/HostDispatcher;->resetHosts()V

    .line 116
    iput-object p1, p0, Landroidx/car/app/HostDispatcher;->mCarHost:Landroidx/car/app/ICarHost;

    .line 117
    return-void
.end method
