.class public abstract Landroid/media/tv/TvInputService;
.super Landroid/app/Service;
.source "TvInputService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvInputService$HardwareSession;,
        Landroid/media/tv/TvInputService$OverlayViewCleanUpTask;,
        Landroid/media/tv/TvInputService$RecordingSession;,
        Landroid/media/tv/TvInputService$ServiceHandler;,
        Landroid/media/tv/TvInputService$Session;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DETACH_OVERLAY_VIEW_TIMEOUT_MS:I = 0x1388

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.media.tv.TvInputService"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.media.tv.input"

.field private static final TAG:Ljava/lang/String; = "TvInputService"


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/media/tv/ITvInputServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceHandler:Landroid/os/Handler;

.field private mTvInputManager:Landroid/media/tv/TvInputManager;


# direct methods
.method static synthetic -get0(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/TvInputService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/tv/TvInputService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/TvInputService;->mServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/media/tv/TvInputService;Ljava/lang/String;)Z
    .locals 1
    .param p1, "inputId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService;->isPassthroughInput(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 103
    new-instance v0, Landroid/media/tv/TvInputService$ServiceHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/tv/TvInputService$ServiceHandler;-><init>(Landroid/media/tv/TvInputService;Landroid/media/tv/TvInputService$ServiceHandler;)V

    iput-object v0, p0, Landroid/media/tv/TvInputService;->mServiceHandler:Landroid/os/Handler;

    .line 105
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 104
    iput-object v0, p0, Landroid/media/tv/TvInputService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 77
    return-void
.end method

.method public static isNavigationKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 1933
    sparse-switch p0, :sswitch_data_0

    .line 1948
    const/4 v0, 0x0

    return v0

    .line 1946
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 1933
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7a -> :sswitch_0
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method private isPassthroughInput(Ljava/lang/String;)Z
    .locals 2
    .param p1, "inputId"    # Ljava/lang/String;

    .prologue
    .line 262
    iget-object v1, p0, Landroid/media/tv/TvInputService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    if-nez v1, :cond_0

    .line 263
    const-string/jumbo v1, "tv_input"

    invoke-virtual {p0, v1}, Landroid/media/tv/TvInputService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager;

    iput-object v1, p0, Landroid/media/tv/TvInputService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    .line 265
    :cond_0
    iget-object v1, p0, Landroid/media/tv/TvInputService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    invoke-virtual {v1, p1}, Landroid/media/tv/TvInputManager;->getTvInputInfo(Ljava/lang/String;)Landroid/media/tv/TvInputInfo;

    move-result-object v0

    .line 266
    .local v0, "info":Landroid/media/tv/TvInputInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->isPassthroughInput()Z

    move-result v1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 111
    new-instance v0, Landroid/media/tv/TvInputService$1;

    invoke-direct {v0, p0}, Landroid/media/tv/TvInputService$1;-><init>(Landroid/media/tv/TvInputService;)V

    return-object v0
.end method

.method public onCreateRecordingSession(Ljava/lang/String;)Landroid/media/tv/TvInputService$RecordingSession;
    .locals 1
    .param p1, "inputId"    # Ljava/lang/String;

    .prologue
    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onCreateSession(Ljava/lang/String;)Landroid/media/tv/TvInputService$Session;
.end method

.method public onHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)Landroid/media/tv/TvInputInfo;
    .locals 1
    .param p1, "hardwareInfo"    # Landroid/media/tv/TvInputHardwareInfo;

    .prologue
    .line 216
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHardwareRemoved(Landroid/media/tv/TvInputHardwareInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "hardwareInfo"    # Landroid/media/tv/TvInputHardwareInfo;

    .prologue
    .line 230
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/media/tv/TvInputInfo;
    .locals 1
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .prologue
    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .prologue
    .line 258
    const/4 v0, 0x0

    return-object v0
.end method
