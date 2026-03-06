.class public Lcom/android/server/pm/BackgroundUserSoundNotifier;
.super Ljava/lang/Object;
.source "BackgroundUserSoundNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/BackgroundUserSoundNotifier$BackgroundUserListener;
    }
.end annotation


# static fields
.field private static final ACTION_DISMISS_NOTIFICATION:Ljava/lang/String; = "com.android.server.ACTION_DISMISS_NOTIFICATION"

.field public static final ACTION_MUTE_SOUND:Ljava/lang/String; = "com.android.server.ACTION_MUTE_BG_USER"

.field private static final ACTION_SWITCH_USER:Ljava/lang/String; = "com.android.server.ACTION_SWITCH_TO_USER"

.field private static final BUSN_CHANNEL_ID:Ljava/lang/String; = "bg_user_sound_channel"

.field private static final BUSN_CHANNEL_NAME:Ljava/lang/String; = "BackgroundUserSound"

.field private static final DEBUG:Z = false

.field private static final EXTRA_NOTIFICATION_CLIENT_UID:Ljava/lang/String; = "com.android.server.EXTRA_CLIENT_UID"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field mBgUserListener:Lcom/android/server/pm/BackgroundUserSoundNotifier$BackgroundUserListener;

.field mFocusControlAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

.field mNotificationClientUid:I

.field mNotificationClientUids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mNotificationManager:Landroid/app/NotificationManager;

.field private final mSystemUserContext:Landroid/content/Context;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/server/pm/BackgroundUserSoundNotifier;)Landroid/os/UserManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdismissNotification(Lcom/android/server/pm/BackgroundUserSoundNotifier;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->dismissNotification(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lcom/android/server/pm/BackgroundUserSoundNotifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mNotificationClientUid:I

    .line 74
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mNotificationClientUids:Ljava/util/Set;

    .line 89
    iput-object p1, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mSystemUserContext:Landroid/content/Context;

    .line 90
    iget-object v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mSystemUserContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    .line 91
    iget-object v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mSystemUserContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mUserManager:Landroid/os/UserManager;

    .line 92
    invoke-direct {p0}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->createNotificationChannel()V

    .line 93
    invoke-direct {p0}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->setupFocusControlAudioPolicy()V

    .line 94
    return-void
.end method

.method private createNotificationChannel()V
    .locals 4

    .line 100
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "BackgroundUserSound"

    const/4 v2, 0x4

    const-string v3, "bg_user_sound_channel"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 102
    .local v0, "channel":Landroid/app/NotificationChannel;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 103
    iget-object v1, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 104
    return-void
.end method

.method private createPendingIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 3
    .param p1, "intentAction"    # Ljava/lang/String;
    .param p2, "notificationClientUid"    # I

    .line 324
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.server.EXTRA_CLIENT_UID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 326
    iget-object v1, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mSystemUserContext:Landroid/content/Context;

    const/high16 v2, 0x4000000

    invoke-static {v1, p2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private dismissNotification(I)V
    .locals 3
    .param p1, "notificationClientUid"    # I

    .line 302
    iget-object v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/android/server/pm/BackgroundUserSoundNotifier;->LOG_TAG:Ljava/lang/String;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 303
    return-void
.end method

.method private isNotificationShown(I)Z
    .locals 2
    .param p1, "notificationClientUid"    # I

    .line 374
    nop

    .line 375
    iget-object v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mNotificationClientUids:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private registerReceiver(Landroid/app/ActivityManager;)V
    .locals 4
    .param p1, "activityManager"    # Landroid/app/ActivityManager;

    .line 155
    new-instance v0, Lcom/android/server/pm/BackgroundUserSoundNotifier$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/BackgroundUserSoundNotifier$1;-><init>(Lcom/android/server/pm/BackgroundUserSoundNotifier;Landroid/app/ActivityManager;)V

    .line 202
    .local v0, "backgroundUserNotificationBroadcastReceiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 203
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.android.server.ACTION_MUTE_BG_USER"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    const-string v2, "com.android.server.ACTION_SWITCH_TO_USER"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    const-string v2, "com.android.server.ACTION_DISMISS_NOTIFICATION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    iget-object v2, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mSystemUserContext:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 208
    return-void
.end method

.method private setupFocusControlAudioPolicy()V
    .locals 6

    .line 110
    iget-object v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mSystemUserContext:Landroid/content/Context;

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 112
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-direct {p0, v0}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->registerReceiver(Landroid/app/ActivityManager;)V

    .line 113
    new-instance v1, Lcom/android/server/pm/BackgroundUserSoundNotifier$BackgroundUserListener;

    invoke-direct {v1, p0}, Lcom/android/server/pm/BackgroundUserSoundNotifier$BackgroundUserListener;-><init>(Lcom/android/server/pm/BackgroundUserSoundNotifier;)V

    iput-object v1, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mBgUserListener:Lcom/android/server/pm/BackgroundUserSoundNotifier$BackgroundUserListener;

    .line 114
    new-instance v1, Landroid/media/audiopolicy/AudioPolicy$Builder;

    iget-object v2, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mSystemUserContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/media/audiopolicy/AudioPolicy$Builder;-><init>(Landroid/content/Context;)V

    .line 115
    .local v1, "focusControlPolicyBuilder":Landroid/media/audiopolicy/AudioPolicy$Builder;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/audiopolicy/AudioPolicy$Builder;->setLooper(Landroid/os/Looper;)Landroid/media/audiopolicy/AudioPolicy$Builder;

    .line 117
    iget-object v2, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mBgUserListener:Lcom/android/server/pm/BackgroundUserSoundNotifier$BackgroundUserListener;

    invoke-virtual {v1, v2}, Landroid/media/audiopolicy/AudioPolicy$Builder;->setAudioPolicyFocusListener(Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;)V

    .line 119
    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioPolicy$Builder;->build()Landroid/media/audiopolicy/AudioPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mFocusControlAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    .line 120
    iget-object v2, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mSystemUserContext:Landroid/content/Context;

    const-class v3, Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mFocusControlAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    .line 121
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicy;)I

    move-result v2

    .line 123
    .local v2, "status":I
    if-eqz v2, :cond_0

    .line 124
    sget-object v3, Lcom/android/server/pm/BackgroundUserSoundNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not register the service\'s focus control audio policy, error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    return-void
.end method


# virtual methods
.method createNotification(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/Notification;
    .locals 12
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "fgContext"    # Landroid/content/Context;
    .param p3, "notificationClientUid"    # I

    .line 333
    const v0, 0x10401a7

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "title":Ljava/lang/String;
    const v1, 0x10803af

    .line 337
    .local v1, "icon":I
    const-string v2, "com.android.server.ACTION_MUTE_BG_USER"

    invoke-direct {p0, v2, p3}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->createPendingIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 338
    .local v2, "mutePI":Landroid/app/PendingIntent;
    const-string v3, "com.android.server.ACTION_SWITCH_TO_USER"

    invoke-direct {p0, v3, p3}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->createPendingIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 339
    .local v3, "switchPI":Landroid/app/PendingIntent;
    const-string v4, "com.android.server.ACTION_DISMISS_NOTIFICATION"

    invoke-direct {p0, v4, p3}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->createPendingIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 342
    .local v4, "dismissNotificationPI":Landroid/app/PendingIntent;
    new-instance v5, Landroid/app/Notification$Action$Builder;

    .line 343
    const v6, 0x10401a4

    invoke-virtual {p2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v7, v6, v2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 344
    invoke-virtual {v5}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v5

    .line 345
    .local v5, "mute":Landroid/app/Notification$Action;
    new-instance v6, Landroid/app/Notification$Action$Builder;

    .line 346
    const v8, 0x10401a5

    invoke-virtual {p2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 347
    invoke-virtual {v6}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v6

    .line 349
    .local v6, "switchUser":Landroid/app/Notification$Action;
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mSystemUserContext:Landroid/content/Context;

    const-string v9, "bg_user_sound_channel"

    invoke-direct {v7, v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 351
    const v8, 0x10803af

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 352
    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 353
    const-string/jumbo v8, "reminder"

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 354
    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 355
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 356
    const v9, 0x106001c

    invoke-virtual {p2, v9}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 357
    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 358
    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 359
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 360
    invoke-virtual {v7, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 361
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 363
    .local v7, "notificationBuilder":Landroid/app/Notification$Builder;
    iget-object v9, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v9}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mUserManager:Landroid/os/UserManager;

    .line 364
    invoke-virtual {p2}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v11

    .line 363
    invoke-virtual {v9, v11}, Landroid/os/UserManager;->getUserSwitchability(Landroid/os/UserHandle;)I

    move-result v9

    if-nez v9, :cond_0

    .line 365
    const/4 v9, 0x2

    new-array v9, v9, [Landroid/app/Notification$Action;

    aput-object v5, v9, v10

    aput-object v6, v9, v8

    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 367
    :cond_0
    new-array v8, v8, [Landroid/app/Notification$Action;

    aput-object v5, v8, v10

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 370
    :goto_0
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    return-object v8
.end method

.method dismissNotificationIfNecessary(I)V
    .locals 2
    .param p1, "notificationClientUid"    # I

    .line 279
    invoke-virtual {p0, p1}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->getAudioFocusInfoForNotification(I)Landroid/media/AudioFocusInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 280
    invoke-direct {p0, p1}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->isNotificationShown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-direct {p0, p1}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->dismissNotification(I)V

    .line 288
    nop

    .line 289
    iget-object v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mNotificationClientUids:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 294
    :cond_0
    return-void
.end method

.method getAudioFocusInfoForNotification(I)Landroid/media/AudioFocusInfo;
    .locals 3
    .param p1, "notificationClientUid"    # I

    .line 312
    if-ltz p1, :cond_1

    .line 313
    iget-object v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mFocusControlAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioPolicy;->getFocusStack()Ljava/util/List;

    move-result-object v0

    .line 314
    .local v0, "stack":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioFocusInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 315
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioFocusInfo;

    invoke-virtual {v2}, Landroid/media/AudioFocusInfo;->getClientUid()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 316
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioFocusInfo;

    return-object v2

    .line 314
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 320
    .end local v0    # "stack":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioFocusInfo;>;"
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getAudioPolicyFocusListener()Lcom/android/server/pm/BackgroundUserSoundNotifier$BackgroundUserListener;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mBgUserListener:Lcom/android/server/pm/BackgroundUserSoundNotifier$BackgroundUserListener;

    return-object v0
.end method

.method muteAlarmSounds(I)V
    .locals 4
    .param p1, "notificationClientUid"    # I

    .line 216
    iget-object v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mSystemUserContext:Landroid/content/Context;

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 217
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    .line 218
    invoke-virtual {v0}, Landroid/media/AudioManager;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    .line 219
    .local v2, "apc":Landroid/media/AudioPlaybackConfiguration;
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getPlayerProxy()Landroid/media/PlayerProxy;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 220
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getPlayerProxy()Landroid/media/PlayerProxy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/PlayerProxy;->stop()V

    .line 222
    .end local v2    # "apc":Landroid/media/AudioPlaybackConfiguration;
    :cond_0
    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->getAudioFocusInfoForNotification(I)Landroid/media/AudioFocusInfo;

    move-result-object v1

    .line 226
    .local v1, "currentAfi":Landroid/media/AudioFocusInfo;
    if-eqz v1, :cond_2

    .line 227
    iget-object v2, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mFocusControlAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    invoke-virtual {v2, v1}, Landroid/media/audiopolicy/AudioPolicy;->sendFocusLossAndUpdate(Landroid/media/AudioFocusInfo;)V

    .line 229
    :cond_2
    return-void
.end method

.method notifyForegroundUserAboutSoundIfNecessary(Landroid/media/AudioFocusInfo;)V
    .locals 10
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 237
    if-nez p1, :cond_0

    .line 238
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mSystemUserContext:Landroid/content/Context;

    .line 241
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 240
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 242
    .local v0, "foregroundContext":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 243
    .local v1, "userId":I
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    .line 244
    .local v2, "usage":I
    iget-object v3, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v1}, Landroid/os/UserManager;->isProfile(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    goto :goto_0

    .line 245
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    :goto_0
    nop

    .line 246
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    const-class v4, Landroid/app/ActivityManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 249
    .local v4, "activityManager":Landroid/app/ActivityManager;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ActivityManager;->isProfileForeground(Landroid/os/UserHandle;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 250
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientUid()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->isNotificationShown(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 252
    const/4 v5, 0x4

    if-ne v2, v5, :cond_2

    .line 258
    nop

    .line 259
    iget-object v5, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mNotificationClientUids:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v5, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v6, Lcom/android/server/pm/BackgroundUserSoundNotifier;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientUid()I

    move-result v7

    iget-object v8, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 265
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientUid()I

    move-result v9

    invoke-virtual {p0, v8, v0, v9}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->createNotification(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/Notification;

    move-result-object v8

    .line 266
    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v9

    .line 264
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 269
    :cond_2
    return-void
.end method
